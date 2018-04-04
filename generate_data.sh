#!/bin/bash
python xml_to_csv.py annotations
python gen_tfrecord.py --csv_input=frcbox_labels.csv  --output_path=frcbox_train.record
