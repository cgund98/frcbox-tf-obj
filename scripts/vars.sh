#!/bin/bash
export TFOBJ_DIR=$(dirname ${BASH_SOURCE[0]})/..
export VINO_DIR=/home/callum/intel/computer_vision_sdk
export TF_MODELS_DIR=$HOME/Coding/tf-models
export PYTHONPATH=$PYTHONPATH:${TF_MODELS_DIR}/research:${TF_MODELS_DIR}/research/slim
