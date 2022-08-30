#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
eval "$(conda shell.bash hook)" && conda activate yolov7
cd $SCRIPT_DIR/
pwd
pip install -r requirements.txt -f https://download.pytorch.org/whl/torch_stable.html



python check_torch.py |grep 'sm_86/|cu113' #RTX 30XX support 

echo "Start downloading pretrained model "
bash download_pretrain_model.sh