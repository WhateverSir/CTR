#loc = loc(unknown)
#loc1 = loc("input")
module attributes {module.FLOPs = 467201280 : i64, module.asymmetric = true, module.chip = "bm1684x", module.coeff_addr = 4294967296 : i64, module.coeff_size = 6017024 : i64, module.mode = "F32", module.name = "DNN", module.neuron_addr = 4300984320 : i64, module.neuron_size = 1032192 : i64, module.platform = "ONNX", module.state = "TPU_ADDRESSED", module.weight_file = "dnn_tpu_addressed_bm1684x_f32_weight.npz"} {
  func.func @main(%arg0: tensor<256x5xf32> loc(unknown)) -> tensor<256x1xf32, 4300996608 : i64> {
    %0 = "top.Input"(%arg0) : (tensor<256x5xf32>) -> tensor<256x5xf32, 4300984320 : i64> loc(#loc1)
    %1 = call @subfunc_0(%0) : (tensor<256x5xf32, 4300984320 : i64>) -> tensor<256x1xf32, 4300996608 : i64> loc(#loc)
    return %1 : tensor<256x1xf32, 4300996608 : i64> loc(#loc)
  } loc(#loc)
  func.func @subfunc_0(%arg0: tensor<256x5xf32, 4300984320 : i64> loc("input")) -> tensor<256x1xf32, 4300996608 : i64> attributes {id = 0 : i64, mode = #tpu<run_mode TPU_STATIC>, next_index = array<i32: -1>} {
    %0 = "top.None"() : () -> none loc(#loc)
    %1 = "tpu.Slice"(%arg0, %0, %0, %0, %0) {ends = [256, 1], offset = [0, 0], steps = [1, 1]} : (tensor<256x5xf32, 4300984320 : i64>, none, none, none, none) -> tensor<256x1xf32, 4300992512 : i64> loc(#loc2)
    %2 = "tpu.Reshape"(%1) : (tensor<256x1xf32, 4300992512 : i64>) -> tensor<256xf32, 4300992512 : i64> loc(#loc3)
    %3 = "tpu.Cast"(%2) {with_scale = true} : (tensor<256xf32, 4300992512 : i64>) -> tensor<256xi32, 4301058048 : i64> loc(#loc4)
    %4 = "top.Weight"() : () -> tensor<6032x64xf32, 4294967296 : i64> loc(#loc5)
    %5 = "tpu.Gather"(%4, %3, %0) {axis = 0 : i64} : (tensor<6032x64xf32, 4294967296 : i64>, tensor<256xi32, 4301058048 : i64>, none) -> tensor<256x64xf32, 4300992512 : i64> loc(#loc6)
    %6 = "tpu.Slice"(%arg0, %0, %0, %0, %0) {ends = [256, 2], offset = [0, 1], steps = [1, 1]} : (tensor<256x5xf32, 4300984320 : i64>, none, none, none, none) -> tensor<256x1xf32, 4301058048 : i64> loc(#loc7)
    %7 = "tpu.Reshape"(%6) : (tensor<256x1xf32, 4301058048 : i64>) -> tensor<256xf32, 4301058048 : i64> loc(#loc8)
    %8 = "tpu.Cast"(%7) {with_scale = true} : (tensor<256xf32, 4301058048 : i64>) -> tensor<256xi32, 4301123584 : i64> loc(#loc9)
    %9 = "top.Weight"() : () -> tensor<3027x64xf32, 4296511488 : i64> loc(#loc10)
    %10 = "tpu.Gather"(%9, %8, %0) {axis = 0 : i64} : (tensor<3027x64xf32, 4296511488 : i64>, tensor<256xi32, 4301123584 : i64>, none) -> tensor<256x64xf32, 4301058048 : i64> loc(#loc11)
    %11 = "tpu.Slice"(%arg0, %0, %0, %0, %0) {ends = [256, 3], offset = [0, 2], steps = [1, 1]} : (tensor<256x5xf32, 4300984320 : i64>, none, none, none, none) -> tensor<256x1xf32, 4301123584 : i64> loc(#loc12)
    %12 = "tpu.Reshape"(%11) : (tensor<256x1xf32, 4301123584 : i64>) -> tensor<256xf32, 4301123584 : i64> loc(#loc13)
    %13 = "tpu.Cast"(%12) {with_scale = true} : (tensor<256xf32, 4301123584 : i64>) -> tensor<256xi32, 4301189120 : i64> loc(#loc14)
    %14 = "top.Weight"() : () -> tensor<3x64xf32, 4297289728 : i64> loc(#loc15)
    %15 = "tpu.Gather"(%14, %13, %0) {axis = 0 : i64} : (tensor<3x64xf32, 4297289728 : i64>, tensor<256xi32, 4301189120 : i64>, none) -> tensor<256x64xf32, 4301123584 : i64> loc(#loc16)
    %16 = "tpu.Slice"(%arg0, %0, %0, %0, %0) {ends = [256, 4], offset = [0, 3], steps = [1, 1]} : (tensor<256x5xf32, 4300984320 : i64>, none, none, none, none) -> tensor<256x1xf32, 4301189120 : i64> loc(#loc17)
    %17 = "tpu.Reshape"(%16) : (tensor<256x1xf32, 4301189120 : i64>) -> tensor<256xf32, 4301189120 : i64> loc(#loc18)
    %18 = "tpu.Cast"(%17) {with_scale = true} : (tensor<256xf32, 4301189120 : i64>) -> tensor<256xi32, 4301254656 : i64> loc(#loc19)
    %19 = "top.Weight"() : () -> tensor<8x64xf32, 4297293824 : i64> loc(#loc20)
    %20 = "tpu.Gather"(%19, %18, %0) {axis = 0 : i64} : (tensor<8x64xf32, 4297293824 : i64>, tensor<256xi32, 4301254656 : i64>, none) -> tensor<256x64xf32, 4301189120 : i64> loc(#loc21)
    %21 = "tpu.Slice"(%arg0, %0, %0, %0, %0) {ends = [256, 5], offset = [0, 4], steps = [1, 1]} : (tensor<256x5xf32, 4300984320 : i64>, none, none, none, none) -> tensor<256x1xf32, 4301254656 : i64> loc(#loc22)
    %22 = "tpu.Reshape"(%21) : (tensor<256x1xf32, 4301254656 : i64>) -> tensor<256xf32, 4301254656 : i64> loc(#loc23)
    %23 = "tpu.Cast"(%22) {with_scale = true} : (tensor<256xf32, 4301254656 : i64>) -> tensor<256xi32, 4301320192 : i64> loc(#loc24)
    %24 = "top.Weight"() : () -> tensor<22x64xf32, 4297297920 : i64> loc(#loc25)
    %25 = "tpu.Gather"(%24, %23, %0) {axis = 0 : i64} : (tensor<22x64xf32, 4297297920 : i64>, tensor<256xi32, 4301320192 : i64>, none) -> tensor<256x64xf32, 4301254656 : i64> loc(#loc26)
    %26 = "tpu.Concat"(%5, %10, %15, %20, %25) {axis = 1 : si32, do_relu = false, only_merge = false, relu_limit = -1.000000e+00 : f64} : (tensor<256x64xf32, 4300992512 : i64>, tensor<256x64xf32, 4301058048 : i64>, tensor<256x64xf32, 4301123584 : i64>, tensor<256x64xf32, 4301189120 : i64>, tensor<256x64xf32, 4301254656 : i64>) -> tensor<256x320xf32, 4301504512 : i64> loc(#loc27)
    %27 = "top.Weight"() : () -> tensor<320x500xf32, 4297306112 : i64> loc(#loc28)
    %28 = "top.Weight"() : () -> tensor<1x1x1x500xf32, 4297949184 : i64> loc(#loc29)
    %29 = "tpu.MatMul"(%26, %27, %28) {do_relu = true, hdim_is_batch = false, input_zp = 0 : i64, keep_dims = true, left_reuse = 0 : i64, left_transpose = false, multipliers = [1], output_transpose = false, quant_mode = #tpu<rq_mode MultiplierShift>, relu_limit = -1.000000e+00 : f64, right_transpose = false, right_zp = 0 : i64, rshifts = [0]} : (tensor<256x320xf32, 4301504512 : i64>, tensor<320x500xf32, 4297306112 : i64>, tensor<1x1x1x500xf32, 4297949184 : i64>) -> tensor<256x500xf32, 4300992512 : i64> loc(#loc30)
    %30 = "top.Weight"() : () -> tensor<500x500xf32, 4297953280 : i64> loc(#loc31)
    %31 = "top.Weight"() : () -> tensor<1x1x1x500xf32, 4298956800 : i64> loc(#loc32)
    %32 = "tpu.MatMul"(%29, %30, %31) {do_relu = true, hdim_is_batch = false, input_zp = 0 : i64, keep_dims = true, left_reuse = 0 : i64, left_transpose = false, multipliers = [1], output_transpose = false, quant_mode = #tpu<rq_mode MultiplierShift>, relu_limit = -1.000000e+00 : f64, right_transpose = false, right_zp = 0 : i64, rshifts = [0]} : (tensor<256x500xf32, 4300992512 : i64>, tensor<500x500xf32, 4297953280 : i64>, tensor<1x1x1x500xf32, 4298956800 : i64>) -> tensor<256x500xf32, 4301504512 : i64> loc(#loc33)
    %33 = "top.Weight"() : () -> tensor<500x500xf32, 4298960896 : i64> loc(#loc34)
    %34 = "top.Weight"() : () -> tensor<1x1x1x500xf32, 4299964416 : i64> loc(#loc35)
    %35 = "tpu.MatMul"(%32, %33, %34) {do_relu = true, hdim_is_batch = false, input_zp = 0 : i64, keep_dims = true, left_reuse = 0 : i64, left_transpose = false, multipliers = [1], output_transpose = false, quant_mode = #tpu<rq_mode MultiplierShift>, relu_limit = -1.000000e+00 : f64, right_transpose = false, right_zp = 0 : i64, rshifts = [0]} : (tensor<256x500xf32, 4301504512 : i64>, tensor<500x500xf32, 4298960896 : i64>, tensor<1x1x1x500xf32, 4299964416 : i64>) -> tensor<256x500xf32, 4300992512 : i64> loc(#loc36)
    %36 = "top.Weight"() : () -> tensor<500x500xf32, 4299968512 : i64> loc(#loc37)
    %37 = "top.Weight"() : () -> tensor<1x1x1x500xf32, 4300972032 : i64> loc(#loc38)
    %38 = "tpu.MatMul"(%35, %36, %37) {do_relu = true, hdim_is_batch = false, input_zp = 0 : i64, keep_dims = true, left_reuse = 0 : i64, left_transpose = false, multipliers = [1], output_transpose = false, quant_mode = #tpu<rq_mode MultiplierShift>, relu_limit = -1.000000e+00 : f64, right_transpose = false, right_zp = 0 : i64, rshifts = [0]} : (tensor<256x500xf32, 4300992512 : i64>, tensor<500x500xf32, 4299968512 : i64>, tensor<1x1x1x500xf32, 4300972032 : i64>) -> tensor<256x500xf32, 4301504512 : i64> loc(#loc39)
    %39 = "top.Weight"() : () -> tensor<500x1xf32, 4300976128 : i64> loc(#loc40)
    %40 = "top.Weight"() : () -> tensor<1x1x1x1xf32, 4300980224 : i64> loc(#loc41)
    %41 = "tpu.MatMul"(%38, %39, %40) {do_relu = false, hdim_is_batch = false, input_zp = 0 : i64, keep_dims = true, left_reuse = 0 : i64, left_transpose = false, multipliers = [1], output_transpose = false, quant_mode = #tpu<rq_mode MultiplierShift>, relu_limit = -1.000000e+00 : f64, right_transpose = false, right_zp = 0 : i64, rshifts = [0]} : (tensor<256x500xf32, 4301504512 : i64>, tensor<500x1xf32, 4300976128 : i64>, tensor<1x1x1x1xf32, 4300980224 : i64>) -> tensor<256x1xf32, 4300992512 : i64> loc(#loc42)
    %42 = "tpu.Active"(%41) {bias = 0.000000e+00 : f64, log = false, mode = #tpu<active_mode SIGMOID>, scale = 1.000000e+00 : f64} : (tensor<256x1xf32, 4300992512 : i64>) -> tensor<256x1xf32, 4300996608 : i64> loc(#loc43)
    return %42 : tensor<256x1xf32, 4300996608 : i64> loc(#loc)
  } loc(#loc)
} loc(#loc)
#loc2 = loc("/embedding_layer/Gather_output_0_Slice")
#loc3 = loc("/embedding_layer/Gather_output_0_Gather")
#loc4 = loc("/embedding_layer/Gather_output_0_Gather_si32")
#loc5 = loc("embedding_layer.embedding_layer.uid.weight")
#loc6 = loc("/embedding_layer/uid/Gather_output_0_Gather")
#loc7 = loc("/embedding_layer/Gather_1_output_0_Slice")
#loc8 = loc("/embedding_layer/Gather_1_output_0_Gather")
#loc9 = loc("/embedding_layer/Gather_1_output_0_Gather_si32")
#loc10 = loc("embedding_layer.embedding_layer.vid.weight")
#loc11 = loc("/embedding_layer/vid/Gather_output_0_Gather")
#loc12 = loc("/embedding_layer/Gather_2_output_0_Slice")
#loc13 = loc("/embedding_layer/Gather_2_output_0_Gather")
#loc14 = loc("/embedding_layer/Gather_2_output_0_Gather_si32")
#loc15 = loc("embedding_layer.embedding_layer.sex.weight")
#loc16 = loc("/embedding_layer/sex/Gather_output_0_Gather")
#loc17 = loc("/embedding_layer/Gather_3_output_0_Slice")
#loc18 = loc("/embedding_layer/Gather_3_output_0_Gather")
#loc19 = loc("/embedding_layer/Gather_3_output_0_Gather_si32")
#loc20 = loc("embedding_layer.embedding_layer.age.weight")
#loc21 = loc("/embedding_layer/age/Gather_output_0_Gather")
#loc22 = loc("/embedding_layer/Gather_4_output_0_Slice")
#loc23 = loc("/embedding_layer/Gather_4_output_0_Gather")
#loc24 = loc("/embedding_layer/Gather_4_output_0_Gather_si32")
#loc25 = loc("embedding_layer.embedding_layer.job.weight")
#loc26 = loc("/embedding_layer/job/Gather_output_0_Gather")
#loc27 = loc("/Concat_output_0_Concat")
#loc28 = loc("dnn.dnn.0.weight_fix")
#loc29 = loc("dnn.dnn.0.bias")
#loc30 = loc("/dnn/dnn/dnn.1/Relu_output_0_Relu")
#loc31 = loc("dnn.dnn.2.weight_fix")
#loc32 = loc("dnn.dnn.2.bias")
#loc33 = loc("/dnn/dnn/dnn.3/Relu_output_0_Relu")
#loc34 = loc("dnn.dnn.4.weight_fix")
#loc35 = loc("dnn.dnn.4.bias")
#loc36 = loc("/dnn/dnn/dnn.5/Relu_output_0_Relu")
#loc37 = loc("dnn.dnn.6.weight_fix")
#loc38 = loc("dnn.dnn.6.bias")
#loc39 = loc("/dnn/dnn/dnn.7/Relu_output_0_Relu")
#loc40 = loc("dnn.dnn.8.weight_fix")
#loc41 = loc("dnn.dnn.8.bias")
#loc42 = loc("/dnn/dnn/dnn.8/Gemm_output_0_Gemm")
#loc43 = loc("output_Sigmoid")

