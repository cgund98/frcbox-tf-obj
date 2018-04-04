#!/bin/bash
TFOBJ_DIR=$HOME/Coding/deeplearning/tf-obj

PIPELINE_CONFIG_PATH=${TFOBJ_DIR}/training/pipeline.config
TRAIN_PATH=${TFOBJ_DIR}/training/model.ckpt-20000

python $HOME/Coding/tf-models/research/object_detection/export_inference_graph.py \
    --input_type image_tensor \
    --pipeline_config_path ${PIPELINE_CONFIG_PATH} \
    --trained_checkpoint_prefix ${TRAIN_PATH} \
    --output_directory output_inference_graph.pb
