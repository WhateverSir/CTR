#loc = loc(unknown)
#loc1 = loc("input")
module attributes {module.FLOPs = 467366144 : i64, module.asymmetric = true, module.chip = "bm1684x", module.coeff_addr = 4294967296 : i64, module.coeff_size = 3067904 : i64, module.mode = "F16", module.name = "DeepFM", module.neuron_addr = 4298035200 : i64, module.neuron_size = 540672 : i64, module.platform = "ONNX", module.state = "TPU_ADDRESSED", module.weight_file = "deepfm_tpu_addressed_bm1684x_f16_weight.npz"} {
  func.func @main(%arg0: tensor<256x5xf32> loc(unknown)) -> tensor<256x1xf32, 4298035200 : i64> {
    %0 = "top.Input"(%arg0) : (tensor<256x5xf32>) -> tensor<256x5xf32, 4298559488 : i64> loc(#loc1)
    %1 = call @subfunc_0(%0) : (tensor<256x5xf32, 4298559488 : i64>) -> tensor<256x1xf32, 4298035200 : i64> loc(#loc)
    return %1 : tensor<256x1xf32, 4298035200 : i64> loc(#loc)
  } loc(#loc)
  func.func @subfunc_0(%arg0: tensor<256x5xf32, 4298559488 : i64> loc("input")) -> tensor<256x1xf32, 4298035200 : i64> attributes {id = 0 : i64, mode = #tpu<run_mode TPU_STATIC>, next_index = array<i32: -1>} {
    %0 = "top.None"() : () -> none loc(#loc)
    %1 = "tpu.Cast"(%arg0) {with_scale = true} : (tensor<256x5xf32, 4298559488 : i64>) -> tensor<256x5xf16, 4298039296 : i64> loc(#loc2)
    %2 = "tpu.Slice"(%1, %0, %0, %0, %0) {ends = [256, 1], offset = [0, 0], steps = [1, 1]} : (tensor<256x5xf16, 4298039296 : i64>, none, none, none, none) -> tensor<256x1xf16, 4298035200 : i64> loc(#loc3)
    %3 = "tpu.Reshape"(%2) : (tensor<256x1xf16, 4298035200 : i64>) -> tensor<256xf16, 4298035200 : i64> loc(#loc4)
    %4 = "tpu.Cast"(%3) {with_scale = true} : (tensor<256xf16, 4298035200 : i64>) -> tensor<256xi32, 4298067968 : i64> loc(#loc5)
    %5 = "top.Weight"() : () -> tensor<6032x64xf16, 4294967296 : i64> loc(#loc6)
    %6 = "tpu.Gather"(%5, %4, %0) {axis = 0 : i64} : (tensor<6032x64xf16, 4294967296 : i64>, tensor<256xi32, 4298067968 : i64>, none) -> tensor<256x64xf16, 4298526720 : i64> loc(#loc7)
    %7 = "tpu.Slice"(%1, %0, %0, %0, %0) {ends = [256, 2], offset = [0, 1], steps = [1, 1]} : (tensor<256x5xf16, 4298039296 : i64>, none, none, none, none) -> tensor<256x1xf16, 4298395648 : i64> loc(#loc8)
    %8 = "tpu.Reshape"(%7) : (tensor<256x1xf16, 4298395648 : i64>) -> tensor<256xf16, 4298395648 : i64> loc(#loc9)
    %9 = "tpu.Cast"(%8) {with_scale = true} : (tensor<256xf16, 4298395648 : i64>) -> tensor<256xi32, 4298391552 : i64> loc(#loc10)
    %10 = "top.Weight"() : () -> tensor<3027x64xf16, 4295741440 : i64> loc(#loc11)
    %11 = "tpu.Gather"(%10, %9, %0) {axis = 0 : i64} : (tensor<3027x64xf16, 4295741440 : i64>, tensor<256xi32, 4298391552 : i64>, none) -> tensor<256x64xf16, 4298493952 : i64> loc(#loc12)
    %12 = "tpu.Slice"(%1, %0, %0, %0, %0) {ends = [256, 3], offset = [0, 2], steps = [1, 1]} : (tensor<256x5xf16, 4298039296 : i64>, none, none, none, none) -> tensor<256x1xf16, 4298387456 : i64> loc(#loc13)
    %13 = "tpu.Reshape"(%12) : (tensor<256x1xf16, 4298387456 : i64>) -> tensor<256xf16, 4298387456 : i64> loc(#loc14)
    %14 = "tpu.Cast"(%13) {with_scale = true} : (tensor<256xf16, 4298387456 : i64>) -> tensor<256xi32, 4298383360 : i64> loc(#loc15)
    %15 = "top.Weight"() : () -> tensor<3x64xf16, 4296130560 : i64> loc(#loc16)
    %16 = "tpu.Gather"(%15, %14, %0) {axis = 0 : i64} : (tensor<3x64xf16, 4296130560 : i64>, tensor<256xi32, 4298383360 : i64>, none) -> tensor<256x64xf16, 4298461184 : i64> loc(#loc17)
    %17 = "tpu.Slice"(%1, %0, %0, %0, %0) {ends = [256, 4], offset = [0, 3], steps = [1, 1]} : (tensor<256x5xf16, 4298039296 : i64>, none, none, none, none) -> tensor<256x1xf16, 4298379264 : i64> loc(#loc18)
    %18 = "tpu.Reshape"(%17) : (tensor<256x1xf16, 4298379264 : i64>) -> tensor<256xf16, 4298379264 : i64> loc(#loc19)
    %19 = "tpu.Cast"(%18) {with_scale = true} : (tensor<256xf16, 4298379264 : i64>) -> tensor<256xi32, 4298375168 : i64> loc(#loc20)
    %20 = "top.Weight"() : () -> tensor<8x64xf16, 4296134656 : i64> loc(#loc21)
    %21 = "tpu.Gather"(%20, %19, %0) {axis = 0 : i64} : (tensor<8x64xf16, 4296134656 : i64>, tensor<256xi32, 4298375168 : i64>, none) -> tensor<256x64xf16, 4298428416 : i64> loc(#loc22)
    %22 = "tpu.Slice"(%1, %0, %0, %0, %0) {ends = [256, 5], offset = [0, 4], steps = [1, 1]} : (tensor<256x5xf16, 4298039296 : i64>, none, none, none, none) -> tensor<256x1xf16, 4298371072 : i64> loc(#loc23)
    %23 = "tpu.Reshape"(%22) : (tensor<256x1xf16, 4298371072 : i64>) -> tensor<256xf16, 4298371072 : i64> loc(#loc24)
    %24 = "tpu.Cast"(%23) {with_scale = true} : (tensor<256xf16, 4298371072 : i64>) -> tensor<256xi32, 4298366976 : i64> loc(#loc25)
    %25 = "top.Weight"() : () -> tensor<22x64xf16, 4296138752 : i64> loc(#loc26)
    %26 = "tpu.Gather"(%25, %24, %0) {axis = 0 : i64} : (tensor<22x64xf16, 4296138752 : i64>, tensor<256xi32, 4298366976 : i64>, none) -> tensor<256x64xf16, 4298395648 : i64> loc(#loc27)
    %27 = "tpu.Unsqueeze"(%6) {axes = [0]} : (tensor<256x64xf16, 4298526720 : i64>) -> tensor<1x256x64xf16, 4298199040 : i64> loc(#loc28)
    %28 = "tpu.Unsqueeze"(%11) {axes = [0]} : (tensor<256x64xf16, 4298493952 : i64>) -> tensor<1x256x64xf16, 4298231808 : i64> loc(#loc29)
    %29 = "tpu.Unsqueeze"(%16) {axes = [0]} : (tensor<256x64xf16, 4298461184 : i64>) -> tensor<1x256x64xf16, 4298264576 : i64> loc(#loc30)
    %30 = "tpu.Unsqueeze"(%21) {axes = [0]} : (tensor<256x64xf16, 4298428416 : i64>) -> tensor<1x256x64xf16, 4298297344 : i64> loc(#loc31)
    %31 = "tpu.Unsqueeze"(%26) {axes = [0]} : (tensor<256x64xf16, 4298395648 : i64>) -> tensor<1x256x64xf16, 4298330112 : i64> loc(#loc32)
    %32 = "tpu.Concat"(%27, %28, %29, %30, %31) {axis = 0 : si32, do_relu = false, only_merge = true, relu_limit = -1.000000e+00 : f64} : (tensor<1x256x64xf16, 4298199040 : i64>, tensor<1x256x64xf16, 4298231808 : i64>, tensor<1x256x64xf16, 4298264576 : i64>, tensor<1x256x64xf16, 4298297344 : i64>, tensor<1x256x64xf16, 4298330112 : i64>) -> tensor<5x256x64xf16, 4298199040 : i64> loc(#loc33)
    %33 = "tpu.Reduce"(%32, %0, %0) {axes = [0], keepdims = false, mode = "ReduceSum"} : (tensor<5x256x64xf16, 4298199040 : i64>, none, none) -> tensor<256x64xf16, 4298035200 : i64> loc(#loc34)
    %34 = "top.Weight"() : () -> tensor<6032x1xf16, 4296142848 : i64> loc(#loc35)
    %35 = "tpu.Gather"(%34, %4, %0) {axis = 0 : i64} : (tensor<6032x1xf16, 4296142848 : i64>, tensor<256xi32, 4298067968 : i64>, none) -> tensor<256x1xf16, 4298362880 : i64> loc(#loc36)
    %36 = "tpu.Unsqueeze"(%35) {axes = [0]} : (tensor<256x1xf16, 4298362880 : i64>) -> tensor<1x256x1xf16, 4298567680 : i64> loc(#loc37)
    %37 = "top.Weight"() : () -> tensor<3027x1xf16, 4296155136 : i64> loc(#loc38)
    %38 = "tpu.Gather"(%37, %9, %0) {axis = 0 : i64} : (tensor<3027x1xf16, 4296155136 : i64>, tensor<256xi32, 4298391552 : i64>, none) -> tensor<256x1xf16, 4298362880 : i64> loc(#loc39)
    %39 = "tpu.Unsqueeze"(%38) {axes = [0]} : (tensor<256x1xf16, 4298362880 : i64>) -> tensor<1x256x1xf16, 4298568192 : i64> loc(#loc40)
    %40 = "top.Weight"() : () -> tensor<3x1xf16, 4296163328 : i64> loc(#loc41)
    %41 = "tpu.Gather"(%40, %14, %0) {axis = 0 : i64} : (tensor<3x1xf16, 4296163328 : i64>, tensor<256xi32, 4298383360 : i64>, none) -> tensor<256x1xf16, 4298362880 : i64> loc(#loc42)
    %42 = "tpu.Unsqueeze"(%41) {axes = [0]} : (tensor<256x1xf16, 4298362880 : i64>) -> tensor<1x256x1xf16, 4298568704 : i64> loc(#loc43)
    %43 = "top.Weight"() : () -> tensor<8x1xf16, 4296167424 : i64> loc(#loc44)
    %44 = "tpu.Gather"(%43, %19, %0) {axis = 0 : i64} : (tensor<8x1xf16, 4296167424 : i64>, tensor<256xi32, 4298375168 : i64>, none) -> tensor<256x1xf16, 4298362880 : i64> loc(#loc45)
    %45 = "tpu.Unsqueeze"(%44) {axes = [0]} : (tensor<256x1xf16, 4298362880 : i64>) -> tensor<1x256x1xf16, 4298569216 : i64> loc(#loc46)
    %46 = "top.Weight"() : () -> tensor<22x1xf16, 4296171520 : i64> loc(#loc47)
    %47 = "tpu.Gather"(%46, %24, %0) {axis = 0 : i64} : (tensor<22x1xf16, 4296171520 : i64>, tensor<256xi32, 4298366976 : i64>, none) -> tensor<256x1xf16, 4298362880 : i64> loc(#loc48)
    %48 = "tpu.Unsqueeze"(%47) {axes = [0]} : (tensor<256x1xf16, 4298362880 : i64>) -> tensor<1x256x1xf16, 4298569728 : i64> loc(#loc49)
    %49 = "tpu.Concat"(%36, %39, %42, %45, %48) {axis = 0 : si32, do_relu = false, only_merge = true, relu_limit = -1.000000e+00 : f64} : (tensor<1x256x1xf16, 4298567680 : i64>, tensor<1x256x1xf16, 4298568192 : i64>, tensor<1x256x1xf16, 4298568704 : i64>, tensor<1x256x1xf16, 4298569216 : i64>, tensor<1x256x1xf16, 4298569728 : i64>) -> tensor<5x256x1xf16, 4298567680 : i64> loc(#loc50)
    %50 = "tpu.Reduce"(%49, %0, %0) {axes = [0], keepdims = false, mode = "ReduceSum"} : (tensor<5x256x1xf16, 4298567680 : i64>, none, none) -> tensor<256x1xf16, 4298571776 : i64> loc(#loc51)
    %51 = "tpu.Mul"(%33, %33) {do_relu = false, multiplier = 1 : si32, quant_mode = #tpu<rq_mode MultiplierShift>, relu_limit = -1.000000e+00 : f64, rshift = 0 : si32} : (tensor<256x64xf16, 4298035200 : i64>, tensor<256x64xf16, 4298035200 : i64>) -> tensor<256x64xf16, 4298362880 : i64> loc(#loc52)
    %52 = "tpu.Mul"(%32, %32) {do_relu = false, multiplier = 1 : si32, quant_mode = #tpu<rq_mode MultiplierShift>, relu_limit = -1.000000e+00 : f64, rshift = 0 : si32} : (tensor<5x256x64xf16, 4298199040 : i64>, tensor<5x256x64xf16, 4298199040 : i64>) -> tensor<5x256x64xf16, 4298035200 : i64> loc(#loc53)
    %53 = "tpu.Reduce"(%52, %0, %0) {axes = [0], keepdims = false, mode = "ReduceSum"} : (tensor<5x256x64xf16, 4298035200 : i64>, none, none) -> tensor<256x64xf16, 4298199040 : i64> loc(#loc54)
    %54 = "tpu.Sub"(%51, %53) {do_relu = false, is_reverse = false, relu_limit = -1.000000e+00 : f64} : (tensor<256x64xf16, 4298362880 : i64>, tensor<256x64xf16, 4298199040 : i64>) -> tensor<256x64xf16, 4298067968 : i64> loc(#loc55)
    %55 = "tpu.MulConst"(%54) {const_val = 5.000000e-01 : f64, do_relu = false, multiplier = 1 : si32, relu_limit = -1.000000e+00 : f64, rshift = 0 : si32} : (tensor<256x64xf16, 4298067968 : i64>) -> tensor<256x64xf16, 4298035200 : i64> loc(#loc56)
    %56 = "tpu.Reduce"(%55, %0, %0) {axes = [1], keepdims = false, mode = "ReduceSum"} : (tensor<256x64xf16, 4298035200 : i64>, none, none) -> tensor<256xf16, 4298067968 : i64> loc(#loc57)
    %57 = "tpu.Reshape"(%56) : (tensor<256xf16, 4298067968 : i64>) -> tensor<256x1xf16, 4298067968 : i64> loc(#loc58)
    %58 = "tpu.Add"(%50, %57) {do_relu = false, relu_limit = -1.000000e+00 : f64} : (tensor<256x1xf16, 4298571776 : i64>, tensor<256x1xf16, 4298067968 : i64>) -> tensor<256x1xf16, 4298567680 : i64> loc(#loc59)
    %59 = "tpu.Concat"(%6, %11, %16, %21, %26) {axis = 1 : si32, do_relu = false, only_merge = false, relu_limit = -1.000000e+00 : f64} : (tensor<256x64xf16, 4298526720 : i64>, tensor<256x64xf16, 4298493952 : i64>, tensor<256x64xf16, 4298461184 : i64>, tensor<256x64xf16, 4298428416 : i64>, tensor<256x64xf16, 4298395648 : i64>) -> tensor<256x320xf16, 4298035200 : i64> loc(#loc60)
    %60 = "top.Weight"() : () -> tensor<320x500xf16, 4296175616 : i64> loc(#loc61)
    %61 = "top.Weight"() : () -> tensor<1x1x1x500xf16, 4296499200 : i64> loc(#loc62)
    %62 = "tpu.MatMul"(%59, %60, %61) {do_relu = true, hdim_is_batch = false, input_zp = 0 : i64, keep_dims = true, left_reuse = 0 : i64, left_transpose = false, multipliers = [1], output_transpose = false, quant_mode = #tpu<rq_mode MultiplierShift>, relu_limit = -1.000000e+00 : f64, right_transpose = false, right_zp = 0 : i64, rshifts = [0]} : (tensor<256x320xf16, 4298035200 : i64>, tensor<320x500xf16, 4296175616 : i64>, tensor<1x1x1x500xf16, 4296499200 : i64>) -> tensor<256x500xf16, 4298293248 : i64> loc(#loc63)
    %63 = "top.Weight"() : () -> tensor<500x500xf16, 4296503296 : i64> loc(#loc64)
    %64 = "top.Weight"() : () -> tensor<1x1x1x500xf16, 4297007104 : i64> loc(#loc65)
    %65 = "tpu.MatMul"(%62, %63, %64) {do_relu = true, hdim_is_batch = false, input_zp = 0 : i64, keep_dims = true, left_reuse = 0 : i64, left_transpose = false, multipliers = [1], output_transpose = false, quant_mode = #tpu<rq_mode MultiplierShift>, relu_limit = -1.000000e+00 : f64, right_transpose = false, right_zp = 0 : i64, rshifts = [0]} : (tensor<256x500xf16, 4298293248 : i64>, tensor<500x500xf16, 4296503296 : i64>, tensor<1x1x1x500xf16, 4297007104 : i64>) -> tensor<256x500xf16, 4298035200 : i64> loc(#loc66)
    %66 = "top.Weight"() : () -> tensor<500x500xf16, 4297011200 : i64> loc(#loc67)
    %67 = "top.Weight"() : () -> tensor<1x1x1x500xf16, 4297515008 : i64> loc(#loc68)
    %68 = "tpu.MatMul"(%65, %66, %67) {do_relu = true, hdim_is_batch = false, input_zp = 0 : i64, keep_dims = true, left_reuse = 0 : i64, left_transpose = false, multipliers = [1], output_transpose = false, quant_mode = #tpu<rq_mode MultiplierShift>, relu_limit = -1.000000e+00 : f64, right_transpose = false, right_zp = 0 : i64, rshifts = [0]} : (tensor<256x500xf16, 4298035200 : i64>, tensor<500x500xf16, 4297011200 : i64>, tensor<1x1x1x500xf16, 4297515008 : i64>) -> tensor<256x500xf16, 4298293248 : i64> loc(#loc69)
    %69 = "top.Weight"() : () -> tensor<500x500xf16, 4297519104 : i64> loc(#loc70)
    %70 = "top.Weight"() : () -> tensor<1x1x1x500xf16, 4298022912 : i64> loc(#loc71)
    %71 = "tpu.MatMul"(%68, %69, %70) {do_relu = true, hdim_is_batch = false, input_zp = 0 : i64, keep_dims = true, left_reuse = 0 : i64, left_transpose = false, multipliers = [1], output_transpose = false, quant_mode = #tpu<rq_mode MultiplierShift>, relu_limit = -1.000000e+00 : f64, right_transpose = false, right_zp = 0 : i64, rshifts = [0]} : (tensor<256x500xf16, 4298293248 : i64>, tensor<500x500xf16, 4297519104 : i64>, tensor<1x1x1x500xf16, 4298022912 : i64>) -> tensor<256x500xf16, 4298035200 : i64> loc(#loc72)
    %72 = "top.Weight"() : () -> tensor<500x1xf16, 4298027008 : i64> loc(#loc73)
    %73 = "top.Weight"() : () -> tensor<1x1x1x1xf16, 4298031104 : i64> loc(#loc74)
    %74 = "tpu.MatMul"(%71, %72, %73) {do_relu = false, hdim_is_batch = false, input_zp = 0 : i64, keep_dims = true, left_reuse = 0 : i64, left_transpose = false, multipliers = [1], output_transpose = false, quant_mode = #tpu<rq_mode MultiplierShift>, relu_limit = -1.000000e+00 : f64, right_transpose = false, right_zp = 0 : i64, rshifts = [0]} : (tensor<256x500xf16, 4298035200 : i64>, tensor<500x1xf16, 4298027008 : i64>, tensor<1x1x1x1xf16, 4298031104 : i64>) -> tensor<256x1xf16, 4298293248 : i64> loc(#loc75)
    %75 = "tpu.Add"(%58, %74) {do_relu = false, relu_limit = -1.000000e+00 : f64} : (tensor<256x1xf16, 4298567680 : i64>, tensor<256x1xf16, 4298293248 : i64>) -> tensor<256x1xf16, 4298035200 : i64> loc(#loc76)
    %76 = "tpu.Cast"(%75) {with_scale = true} : (tensor<256x1xf16, 4298035200 : i64>) -> tensor<256x1xf32, 4298039296 : i64> loc(#loc77)
    %77 = "tpu.Active"(%76) {bias = 0.000000e+00 : f64, log = false, mode = #tpu<active_mode SIGMOID>, scale = 1.000000e+00 : f64} : (tensor<256x1xf32, 4298039296 : i64>) -> tensor<256x1xf32, 4298035200 : i64> loc(#loc78)
    return %77 : tensor<256x1xf32, 4298035200 : i64> loc(#loc)
  } loc(#loc)
} loc(#loc)
#loc2 = loc("input_f16")
#loc3 = loc("/embedding_layer/Gather_output_0_Slice")
#loc4 = loc("/embedding_layer/Gather_output_0_Gather")
#loc5 = loc("/embedding_layer/Gather_output_0_Gather_si32")
#loc6 = loc("/embedding_layer/uid/Gather_output_0_Gatherembedding_layer.embedding_layer.uid.weight_f16")
#loc7 = loc("/embedding_layer/uid/Gather_output_0_Gather")
#loc8 = loc("/embedding_layer/Gather_1_output_0_Slice")
#loc9 = loc("/embedding_layer/Gather_1_output_0_Gather")
#loc10 = loc("/embedding_layer/Gather_1_output_0_Gather_si32")
#loc11 = loc("/embedding_layer/vid/Gather_output_0_Gatherembedding_layer.embedding_layer.vid.weight_f16")
#loc12 = loc("/embedding_layer/vid/Gather_output_0_Gather")
#loc13 = loc("/embedding_layer/Gather_2_output_0_Slice")
#loc14 = loc("/embedding_layer/Gather_2_output_0_Gather")
#loc15 = loc("/embedding_layer/Gather_2_output_0_Gather_si32")
#loc16 = loc("/embedding_layer/sex/Gather_output_0_Gatherembedding_layer.embedding_layer.sex.weight_f16")
#loc17 = loc("/embedding_layer/sex/Gather_output_0_Gather")
#loc18 = loc("/embedding_layer/Gather_3_output_0_Slice")
#loc19 = loc("/embedding_layer/Gather_3_output_0_Gather")
#loc20 = loc("/embedding_layer/Gather_3_output_0_Gather_si32")
#loc21 = loc("/embedding_layer/age/Gather_output_0_Gatherembedding_layer.embedding_layer.age.weight_f16")
#loc22 = loc("/embedding_layer/age/Gather_output_0_Gather")
#loc23 = loc("/embedding_layer/Gather_4_output_0_Slice")
#loc24 = loc("/embedding_layer/Gather_4_output_0_Gather")
#loc25 = loc("/embedding_layer/Gather_4_output_0_Gather_si32")
#loc26 = loc("/embedding_layer/job/Gather_output_0_Gatherembedding_layer.embedding_layer.job.weight_f16")
#loc27 = loc("/embedding_layer/job/Gather_output_0_Gather")
#loc28 = loc("/fm_layer/inner_product_layer/Unsqueeze_output_0_Unsqueeze")
#loc29 = loc("/fm_layer/inner_product_layer/Unsqueeze_1_output_0_Unsqueeze")
#loc30 = loc("/fm_layer/inner_product_layer/Unsqueeze_2_output_0_Unsqueeze")
#loc31 = loc("/fm_layer/inner_product_layer/Unsqueeze_3_output_0_Unsqueeze")
#loc32 = loc("/fm_layer/inner_product_layer/Unsqueeze_4_output_0_Unsqueeze")
#loc33 = loc("/fm_layer/inner_product_layer/Concat_output_0_Concat")
#loc34 = loc("/fm_layer/inner_product_layer/ReduceSum_output_0_ReduceSum")
#loc35 = loc("/fm_layer/lr_layer/embedding_layer/uid/Gather_output_0_Gatherfm_layer.lr_layer.embedding_layer.embedding_layer.uid.weight_f16")
#loc36 = loc("/fm_layer/lr_layer/embedding_layer/uid/Gather_output_0_Gather")
#loc37 = loc("/fm_layer/lr_layer/Unsqueeze_output_0_Unsqueeze")
#loc38 = loc("/fm_layer/lr_layer/embedding_layer/vid/Gather_output_0_Gatherfm_layer.lr_layer.embedding_layer.embedding_layer.vid.weight_f16")
#loc39 = loc("/fm_layer/lr_layer/embedding_layer/vid/Gather_output_0_Gather")
#loc40 = loc("/fm_layer/lr_layer/Unsqueeze_1_output_0_Unsqueeze")
#loc41 = loc("/fm_layer/lr_layer/embedding_layer/sex/Gather_output_0_Gatherfm_layer.lr_layer.embedding_layer.embedding_layer.sex.weight_f16")
#loc42 = loc("/fm_layer/lr_layer/embedding_layer/sex/Gather_output_0_Gather")
#loc43 = loc("/fm_layer/lr_layer/Unsqueeze_2_output_0_Unsqueeze")
#loc44 = loc("/fm_layer/lr_layer/embedding_layer/age/Gather_output_0_Gatherfm_layer.lr_layer.embedding_layer.embedding_layer.age.weight_f16")
#loc45 = loc("/fm_layer/lr_layer/embedding_layer/age/Gather_output_0_Gather")
#loc46 = loc("/fm_layer/lr_layer/Unsqueeze_3_output_0_Unsqueeze")
#loc47 = loc("/fm_layer/lr_layer/embedding_layer/job/Gather_output_0_Gatherfm_layer.lr_layer.embedding_layer.embedding_layer.job.weight_f16")
#loc48 = loc("/fm_layer/lr_layer/embedding_layer/job/Gather_output_0_Gather")
#loc49 = loc("/fm_layer/lr_layer/Unsqueeze_4_output_0_Unsqueeze")
#loc50 = loc("/fm_layer/lr_layer/Concat_output_0_Concat")
#loc51 = loc("/fm_layer/lr_layer/ReduceSum_output_0_ReduceSum")
#loc52 = loc("/fm_layer/inner_product_layer/Pow_output_0_Pow")
#loc53 = loc("/fm_layer/inner_product_layer/Pow_1_output_0_Pow")
#loc54 = loc("/fm_layer/inner_product_layer/ReduceSum_1_output_0_ReduceSum")
#loc55 = loc("/fm_layer/inner_product_layer/Sub_output_0_Sub")
#loc56 = loc("/fm_layer/inner_product_layer/Mul_output_0_Mul")
#loc57 = loc("/fm_layer/inner_product_layer/ReduceSum_2_output_0_ReduceSum")
#loc58 = loc("/fm_layer/inner_product_layer/Reshape_output_0_Reshape")
#loc59 = loc("/fm_layer/Add_output_0_Add")
#loc60 = loc("/Concat_output_0_Concat")
#loc61 = loc("/dnn/dnn/dnn.1/Relu_output_0_Reludnn.dnn.0.weight_fix_f16")
#loc62 = loc("/dnn/dnn/dnn.1/Relu_output_0_Reludnn.dnn.0.bias_f16")
#loc63 = loc("/dnn/dnn/dnn.1/Relu_output_0_Relu")
#loc64 = loc("/dnn/dnn/dnn.3/Relu_output_0_Reludnn.dnn.2.weight_fix_f16")
#loc65 = loc("/dnn/dnn/dnn.3/Relu_output_0_Reludnn.dnn.2.bias_f16")
#loc66 = loc("/dnn/dnn/dnn.3/Relu_output_0_Relu")
#loc67 = loc("/dnn/dnn/dnn.5/Relu_output_0_Reludnn.dnn.4.weight_fix_f16")
#loc68 = loc("/dnn/dnn/dnn.5/Relu_output_0_Reludnn.dnn.4.bias_f16")
#loc69 = loc("/dnn/dnn/dnn.5/Relu_output_0_Relu")
#loc70 = loc("/dnn/dnn/dnn.7/Relu_output_0_Reludnn.dnn.6.weight_fix_f16")
#loc71 = loc("/dnn/dnn/dnn.7/Relu_output_0_Reludnn.dnn.6.bias_f16")
#loc72 = loc("/dnn/dnn/dnn.7/Relu_output_0_Relu")
#loc73 = loc("/dnn/dnn/dnn.8/Gemm_output_0_Gemmdnn.dnn.8.weight_fix_f16")
#loc74 = loc("/dnn/dnn/dnn.8/Gemm_output_0_Gemmdnn.dnn.8.bias_f16")
#loc75 = loc("/dnn/dnn/dnn.8/Gemm_output_0_Gemm")
#loc76 = loc("/Add_output_0_Add")
#loc77 = loc("/Add_output_0_Add_f32")
#loc78 = loc("output_Sigmoid")

