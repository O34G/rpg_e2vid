#!/bin/sh

# models: E2VID_lightweight.pth.tar, firenet_1000.pth.tar
MODEL="pretrained/firenet_1000.pth.tar"

# window duration (in ms)
# window_duration = (1 / framerate) * 1000
WINDOW_DURATION=0.1

INPUT_DATA="./data/dynamic_6dof.zip"
OUT_FOLDER="./output/"
DATASET="dynamic_6dof"

python run_reconstruction.py \
  -c $MODEL \
  -i $INPUT_DATA \
  --auto_hdr \
  --display \
  --show_events \
  --fixed_duration \
  --window_duration $WINDOW_DURATION \
  --output_folder $OUT_FOLDER \
  --dataset_name $DATASET
