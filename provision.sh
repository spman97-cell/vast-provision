#!/bin/bash
COMFY=/workspace/ComfyUI
MODELS_DIR=$COMFY/models

# 1. Нода Civicomfy
cd $COMFY/custom_nodes
if [ ! -d Civicomfy ]; then
  git clone https://github.com/MoonGoblinDev/Civicomfy.git
  [ -f Civicomfy/requirements.txt ] && pip install -r Civicomfy/requirements.txt
fi

# 2. Модель Anima
mkdir -p $MODELS_DIR/checkpoints
wget -nc --content-disposition \
  -P $MODELS_DIR/checkpoints \
  "https://civitai.com/api/download/models/3389708?token=$CIVITAI_TOKEN"
