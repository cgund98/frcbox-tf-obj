#!/bin/bash
cd $HOME/Coding/tf-models/research
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
cd $HOME/extra/Coding/deeplearning/tf-obj
python $HOME/extra/tf-models/research/object_detection/train.py --logtostderr --pipeline_config_path=$HOME/Coding/deeplearning/tf-obj/training/pipeline.config --checkpoint-dir=$HOME/Coding/deeplearning/tf-obj/checkpoints/ --train_dir=$HOME/Coding/deeplearning/tf-obj/training/
