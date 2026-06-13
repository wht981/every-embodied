#!/usr/bin/env bash
set -euo pipefail

ROOT=/root/gpufree-share/dit4dit_eval
REPO="$ROOT/DiT4DiT"
PY_ENV=/root/gpufree-share/conda-envs/dit4dit
FREE_ROOT=/root/gpufree-data/dit4dit_train_test
DATA_ROOT="$FREE_ROOT/datasets"
RUN_ROOT="$FREE_ROOT/results"
LOG_DIR="$FREE_ROOT/logs"
COSMOS="$ROOT/models/Cosmos-Predict2.5-2B"
PRETRAINED="$ROOT/models/dit4dit-model/dit4dit_libero/final_model/pytorch_model.pt"
RUN_ID="train_smoke_libero_spatial_$(date +%Y%m%d_%H%M%S)"
STEPS="${1:-2}"
BATCH="${2:-1}"

source "$ROOT/env.sh"
export PYTHONPATH="$REPO"
export WANDB_MODE=offline
export WANDB_DIR="$LOG_DIR/wandb"
export HF_HOME="$FREE_ROOT/hf_cache"
export TRANSFORMERS_CACHE="$FREE_ROOT/hf_cache/transformers"
export CUDA_VISIBLE_DEVICES="${CUDA_VISIBLE_DEVICES:-0}"
export TOKENIZERS_PARALLELISM=false
mkdir -p "$RUN_ROOT" "$LOG_DIR" "$WANDB_DIR" "$HF_HOME"

cd "$REPO"
LOG_FILE="$LOG_DIR/${RUN_ID}.log"

echo "run_id=$RUN_ID"
echo "steps=$STEPS batch=$BATCH"
echo "data_root=$DATA_ROOT"
echo "run_root=$RUN_ROOT"
echo "log_file=$LOG_FILE"
df -h /root/gpufree-data /root/gpufree-share

"$PY_ENV/bin/accelerate" launch \
  --config_file DiT4DiT/config/deepseeds/deepspeed_zero2.yaml \
  --num_processes 1 \
  DiT4DiT/training/train.py \
  --config_yaml ./DiT4DiT/config/libero/dit4dit_libero.yaml \
  --framework.name DiT4DiT \
  --framework.cosmos25.base_model "$COSMOS" \
  --framework.cosmos25.training joint \
  --framework.cosmos25.attn_implementation sdpa \
  --framework.cosmos25.extract_layer 17 \
  --framework.action_model.action_model_type DiT-B \
  --datasets.vla_data.data_root_dir "$DATA_ROOT" \
  --datasets.vla_data.data_mix libero_spatial_only \
  --datasets.vla_data.per_device_batch_size "$BATCH" \
  --datasets.vla_data.load_all_data_for_training false \
  --datasets.vla_data.video_backend torchvision_av \
  --trainer.pretrained_checkpoint "$PRETRAINED" \
  --trainer.freeze_modules backbone_interface \
  --trainer.max_train_steps "$STEPS" \
  --trainer.save_interval 999999 \
  --trainer.eval_interval 999999 \
  --trainer.logging_frequency 1 \
  --trainer.num_warmup_steps 0 \
  --trainer.learning_rate.base 1e-5 \
  --trainer.learning_rate.backbone_interface 0 \
  --trainer.learning_rate.action_model 1e-5 \
  --trainer.loss_scale.future_video 0 \
  --trainer.repeated_diffusion_steps 1 \
  --trainer.gradient_accumulation_steps 1 \
  --trainer.enable_gradient_checkpointing true \
  --run_root_dir "$RUN_ROOT" \
  --run_id "$RUN_ID" \
  --wandb_project DiT4DiT_libero_smoke \
  --wandb_entity offline 2>&1 | tee "$LOG_FILE"

FINAL="$RUN_ROOT/$RUN_ID/final_model/pytorch_model.pt"
if [ -f "$FINAL" ]; then
  du -sh "$RUN_ROOT/$RUN_ID" || true
  if [ "${KEEP_FINAL_MODEL:-0}" != "1" ]; then
    rm -rf "$RUN_ROOT/$RUN_ID/final_model"
    echo "Removed large final_model to keep free data disk small. Set KEEP_FINAL_MODEL=1 to retain it."
  fi
fi

echo "Smoke training finished: $RUN_ROOT/$RUN_ID"
df -h /root/gpufree-data /root/gpufree-share




