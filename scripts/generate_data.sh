#!/bin/bash
python xml_to_csv.py --annotations=../data/annotations --output=../data/frcbox_labels.csv
python gen_tfrecord.py --csv_input=../data/frcbox_labels.csv  --output_path=../data/frcbox_train.record
