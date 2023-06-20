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
        --mlir DeepFM_$1b.mlir
}

function gen_fp32bmodel()
{
    model_deploy.py \
        --mlir DeepFM_$1b.mlir \
        --quantize F32 \
        --chip $target \
        --model DeepFM_fp32_$1b.bmodel

    mv DeepFM_fp32_$1b.bmodel $outdir/
}

pushd $model_dir
if [ ! -d $outdir ]; then
    mkdir -p $outdir
fi
# batch_size=256
gen_mlir 256
gen_fp32bmodel 256

popd