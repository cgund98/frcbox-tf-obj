#!/bin/bash
ORIGINAL_DIR=$(pwd)
cd $HOME/Coding/tf-models/research
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
cd $ORIGINAL_DIR
