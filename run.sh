MODEL="pretrained/firenet_1000.pth.tar"
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
  --window_duration 0.1 \
  --output_folder $OUT_FOLDER \
  --dataset_name $DATASET
