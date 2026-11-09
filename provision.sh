#!/bin/bash
MODELS_DIR=/workspace/ComfyUI/models

mkdir -p $MODELS_DIR/checkpoints
wget -nc --content-disposition \
  -P $MODELS_DIR/checkpoints \
  "https://civitai.com/api/download/models/VERSION_ID?token=$CIVITAI_TOKEN"
