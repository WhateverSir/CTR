#!/bin/bash
model_dir=$(dirname $(readlink -f "$0"))

if [ ! $1 ]; then
    target=bm1684x
else
    target=$1
fi

outdir=../models/BM1684X

function gen_mlir()
{
    model_transform.py \
        --model_name DeepFM \
        --model_def ../models/onnx/DeepFM.onnx \
        --input_shapes [[$1,5]] \
        --mean 0.0,0.0,0.0 \
        --scale 1.0,1.0,1.0 \
        --keep_aspect_ratio \
        --mlir DeepFM_$1b.mlir
}

# function gen_cali_table()
# {
#    run_calibration.py DeepFM_$1b.mlir \
#        --dataset ../datasets/cali_set/ \
#        --input_num 128 \
#        -o extractor_cali_table
# }

function gen_int8bmodel()
{
    model_deploy.py \
        --mlir DeepFM_$1b.mlir \
        --quantize INT8 \
        --chip $target \
        --asymmetric \
        --model DeepFM_int8_$1b.bmodel

    mv DeepFM_int8_$1b.bmodel $outdir/
}

pushd $model_dir
if [ ! -d $outdir ]; then
    mkdir -p $outdir
fi

# batch_size=256
gen_mlir 256
gen_int8bmodel 256

popd