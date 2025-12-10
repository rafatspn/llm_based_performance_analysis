import datetime
import pathlib
import warnings

from openai import OpenAI
from pycubexr import CubexParser
from pycubexr.classes import Region

import tiktoken


def _make_callpath_mapping(cnodes, enable_demangle_names=True) -> dict[str, int]:
    callpaths = {}

    def demangle_name(name):
        if enable_demangle_names:
            from itanium_demangler import parse as demangle
            try:
                demangled = demangle(name)
                if demangled:
                    name = str(demangled)
            except NotImplementedError as e:
                pass
        return name.replace('->', '- >')

    def walk_tree(parent_cnode, parent_name):
        for cnode in parent_cnode.get_children():
            name = cnode.region.name
            name = demangle_name(name)
            path_name = '->'.join((parent_name, name))
            callpaths[path_name] = cnode.id
            walk_tree(cnode, path_name)

    for root_cnode in cnodes:
        name = root_cnode.region.name
        name = demangle_name(name)
        callpaths[name] = root_cnode.id
        walk_tree(root_cnode, name)

    return callpaths


def get_source_code(region: Region, source_code_mapping) -> str:
    module_path = region.mod
    if not module_path:
        raise ValueError(f"This call path does not have source information.")
    path = pathlib.Path(module_path)
    module_source = None
    if path.exists():
        module_source = path.read_text()

    for s, d in source_code_mapping.items():
        path_str = str(path)
        if path_str.startswith(s):
            p = path_str.replace(s, d)
            module_path = pathlib.Path(p)
            if module_path.exists():
                module_source = module_path.read_text()
            else:
                module_source = None
                break

    if not module_source:
        raise RuntimeError(f"Source code not found. The source file {module_path} does not exist.")

    lines = module_source.splitlines()
    relevant_lines = lines[region.begin - 1:region.end]
    source_code = '\n'.join(relevant_lines)
    return source_code


def analyze_cube_file(filepath, source_code_mapping):
    api_client = OpenAI(
        # defaults to os.environ.get("OPENAI_API_KEY")
        base_url='http://130.83.143.245:18000/v1/',
        api_key='ppktestapikey',
    )
    models = api_client.models.list()
    model = models.data[0].id

    tokens_for_code = 130000
    tokenizer_enc = tiktoken.get_encoding("o200k_base")

    with CubexParser(str(filepath)) as parsed:
        callpaths = _make_callpath_mapping(parsed.get_root_cnodes())

        for cp in callpaths:
            relevant_code_regions = []
            callpaths_to_ignore = []

            current_call_path = cp
            while '->' in current_call_path:
                cnode_id = callpaths[current_call_path]
                code_region = parsed.get_cnode(cnode_id).region
                relevant_code_regions.append(code_region)

                for ignore_cp in callpaths:
                    if ignore_cp.startswith(current_call_path) and ignore_cp.count('->', len(current_call_path)) == 1:
                        callpaths_to_ignore.append(ignore_cp.split('->', maxsplit=1)[1])

                current_call_path = current_call_path.rsplit('->', maxsplit=1)[0]

            if not relevant_code_regions:
                continue

            relevant_source_code = ""

            try:

                for region in reversed(relevant_code_regions):
                    if region.mod == 'MPI':
                        relevant_source_code += "The source code for region " + region.name + " is vendor specific, assume a standard implementation.\n"
                    else:
                        source_snippet = get_source_code(region, source_code_mapping)
                        relevant_source_code += source_snippet + '\n\n'
                    if len(tokenizer_enc.encode(relevant_source_code)) > tokens_for_code:
                        raise NotImplementedError("Token limit exceeded.")


            except RuntimeError as e:
                warnings.warn(str(e), RuntimeWarning)

            if not relevant_source_code:
                continue

            messages = [{
                "role": "system",
                'content': ("You are an algorithms assistant analyzing time complexity. "
                            "Highlight the final complexity result by putting it in <complexity></complexity> tags "
                            "Optional reasoning in <think>...</think> at START only, keep it brief. "
                            "\n"
                            "Analyze worst-case time complexity (not average or best case).\n"
                            "The function at the end of the callpath is the primary analysis target.\n"
                            )
            }, {
                "role": "user",
                "content": (
                    f"Given the following source code snippets corresponding to the call path: {cp}\n"
                    "\n"
                    f"{relevant_source_code}"
                    "\n"
                    "What is the complexity of calling this callpath depending on the problem size n and number of ranks p? Can you highlight the final complexity result by putting it in <complexity></complexity> tags. Assume the following callpaths are constant while answering that:"
                    f"{callpaths_to_ignore}"
                ),
            }
            ]

            message = ""

            while len(message) < 10:
                chat_completion = api_client.chat.completions.create(
                    messages=messages, model=model
                )

                message = chat_completion.choices[0].message.content

            complexity = message.split('<complexity>', maxsplit=1)[1].split('</complexity>')[0]

            print(cp, ':', complexity)


if __name__ == '__main__':
    source_code_mapping = {str(pathlib.Path('/work/home/ag27juro/gadget4-master')):
                               str(pathlib.Path(r'C:\Users\Alexander\Projects\test_big_apps\gadget\source\gadget4')),
                           str(pathlib.Path('BC_MPI_1733089303_831274.input.prep.opari.cpp')):
                               str(pathlib.Path(
                                   r'C:\Users\Alexander\Downloads\case_1-20251126T100259Z-1-001\case_1\BC_MPI.cpp'))}
    analyze_cube_file(
        r"C:\Users\Alexander\Downloads\case_1-20251126T100259Z-1-001\case_1\measurements_swc_cube\BB.p128.n8000\profile.cubex",
        source_code_mapping)
    # source_code_mapping = {str(pathlib.Path('/work/home/ag27juro/gadget4-master')):
    #                            str(pathlib.Path(r'C:\Users\Alexander\Projects\test_big_apps\gadget\source\gadget4'))}
    # analyze_cube_file(r"C:\Users\Alexander\Projects\test_big_apps\gadget\gdg.p96.g96.r1\profile.cubex",
    #                   source_code_mapping)
