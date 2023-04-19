# models: E2VID_lightweight.pth.tar, firenet_1000.pth.tar
MODEL="pretrained/firenet_1000.pth.tar"

FRAMERATE = 10000
# window duration (expressed in ms)
WINDOW_DURATION = (1 / $FRAMERATE) * 1000

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
