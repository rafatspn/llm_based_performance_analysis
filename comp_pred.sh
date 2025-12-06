cd ""

module use /soft/modulefiles; module load conda; conda activate 

source ""/bin/activate

export HF_HOME=""
export HF_HUB_CACHE=$HF_HOME/hub
export HF_DATASETS_CACHE=$HF_HOME/datasets


python -m comp_pred \
  --num-per-class 20 \
  --seed 42 \
  --out-csv tasty_qwen_results \
  --cache_dir ""/araf/time_complexity \
  --model-name Qwen/Qwen3-Coder-30B-A3B-Instruct
