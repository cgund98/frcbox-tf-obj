#!/bin/bash
cd $HOME/Coding/tf-models/research
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
python object_detection/train.py --logtostderr --pipeline_config_path=$HOME/Coding/deeplearning/tf-obj/models/frcbox/pipeline.config --checkpoint-dir=$HOME/Coding/deeplearning/tf-obj/models/frcbox/ --train_dir=$HOME/Coding/deeplearning/tf-obj/models/frcbox/train/
