#!/bin/bash

source $(dirname ${BASH_SOURCE[0]})/vars.sh

source ${VINO_DIR}/bin/setupvars.sh
mo_tf.py --input_model=${TFOBJ_DIR}/output_inference_graph.pb/frozen_inference_graph.pb  \
	--tensorflow_use_custom_operations_config=${VINO_DIR}/deployment_tools/model_optimizer/extensions/front/tf/ssd_support.json \
       	--output="detection_boxes,detection_scores,num_detections" \
	--data_type FP16 \
	--tensorflow_object_detection_api_pipeline_config=${TFOBJ_DIR}/training/pipeline.config
