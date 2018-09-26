#!/bin/bash

source $(dirname ${BASH_SOURCE[0]})/vars.sh

PIPELINE_CONFIG_PATH=${TFOBJ_DIR}/training/pipeline.config
TRAIN_PATH=${TFOBJ_DIR}/training/model.ckpt-30000

python ${TFOBJ_DIR}/scripts/object_detection/export_inference_graph.py \
    --input_type image_tensor \
    --pipeline_config_path ${PIPELINE_CONFIG_PATH} \
    --trained_checkpoint_prefix ${TRAIN_PATH} \
    --output_directory output_inference_graph.pb
