# Zenodo HPC Benchmark Data

This directory contains HPC benchmark data downloaded from Zenodo for LLM complexity analysis experiments.

**Note:** Data files are not tracked in git due to their size. Follow the instructions below to download.

## Data Sources

### 1. LULESH Dataset

- **Source:** https://zenodo.org/records/8074518
- **Description:** Score-P profiling data for LULESH proxy application
- **Format:** CUBE files (.cubex)
- **Size:** ~130 experiments

**Parameters:**
| Parameter | Values |
|-----------|--------|
| Processes (p) | 125, 216, 343, 512, 729, 1000 |
| Problem size (s) | 10, 15, 20, 25, 30, 35 |
| Repetitions (r) | 1-5 |

**Download:**
```bash
curl -L -o lulesh.tar.gz "https://zenodo.org/records/8074518/files/lulesh.tar.gz?download=1"
tar -xzf lulesh.tar.gz --no-same-owner
rm lulesh.tar.gz
```

### 2. RELeARN Dataset

- **Source:** https://zenodo.org/records/8074518
- **Description:** Extra-P text format with function measurements
- **Format:** Text file with measurements

**Parameters:**
| Parameter | Values |
|-----------|--------|
| Processes (p) | 32, 64, 128, 256, 512 |
| Problem size (n) | 5000, 6000, 7000, 8000, 9000 |

**Regions (14 functions):**
- main()
- Initialization
- Simulation loop
- Update electrical activity
- Connectivity update
- Find target neurons (w/ RMA)
- Create synapses (w/ Alltoall)
- ... and more

**Download:**
```bash
curl -L -o relearn.tar.gz "https://zenodo.org/records/8074518/files/relearn.tar.gz?download=1"
tar -xzf relearn.tar.gz --no-same-owner
rm relearn.tar.gz
```

## Quick Setup

Download both datasets at once:

```bash
cd data/zenodo_benchmarks

# LULESH
curl -L -o lulesh.tar.gz "https://zenodo.org/records/8074518/files/lulesh.tar.gz?download=1"
tar -xzf lulesh.tar.gz --no-same-owner && rm lulesh.tar.gz

# RELeARN
curl -L -o relearn.tar.gz "https://zenodo.org/records/8074518/files/relearn.tar.gz?download=1"
tar -xzf relearn.tar.gz --no-same-owner && rm relearn.tar.gz
```

## Processing Scripts

Use `scripts/process_zenodo_data.py` to work with the data:

```bash
# Activate virtual environment
source .venv/bin/activate

# List available datasets
python scripts/process_zenodo_data.py --list

# Summarize LULESH experiments
python scripts/process_zenodo_data.py --parse-lulesh

# Summarize RELeARN data
python scripts/process_zenodo_data.py --parse-relearn

# Demo CUBE file parsing (extracts call paths)
python scripts/process_zenodo_data.py --demo-cube

# Export data for LLM experiments
python scripts/process_zenodo_data.py --export output_dir/
```

## CUBE File Structure

Each LULESH experiment contains a `profile.cubex` file with:

- **Call paths:** Function call hierarchy (e.g., `main->MPI_Init->...`)
- **Source locations:** File path and line numbers
- **Metrics:** Time measurements per call path

Example parsed output:
```
int main(int, char**)
  -> lulesh.cc:2650-2792
  MPI_Init
  void ParseCommandLineOptions(...)
    -> lulesh-util.cc:63-171
  Domain::Domain(...)
    -> lulesh-init.cc:16-194
```

## Requirements

```bash
pip install pycubexr  # For CUBE file parsing
```

## Use Cases for LLM Experiments

1. **Call path extraction:** Get function names and call hierarchies for complexity prediction
2. **Source code mapping:** Link call paths to source code locations
3. **Measurement data:** Use as ground truth for model validation
4. **Scaling analysis:** Compare LLM predictions with actual measurements across different p and n values
