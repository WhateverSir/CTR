[bmprofile] is_mlir=1
...Start Profile Log...
[bmprofile] start to run subnet_id=0

[bmprofile] global_layer: layer_id=11 layer_type=Slice layer_name=
[bmprofile] tensor_id=-1 is_in=1 shape=[256x5] dtype=0 is_const=0 gaddr=4298076160 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=11 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4298051584 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=0 gdma_id=1 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=12 layer_type=Reshape layer_name=
[bmprofile] tensor_id=11 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4298051584 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=12 is_in=0 shape=[256] dtype=0 is_const=0 gaddr=4298051584 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=13 layer_type=Cast layer_name=
[bmprofile] tensor_id=12 is_in=1 shape=[256] dtype=0 is_const=0 gaddr=4298051584 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=13 is_in=0 shape=[256] dtype=6 is_const=0 gaddr=4298047488 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=0 gdma_id=2 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=1 gdma_id=2 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=1 gdma_id=3 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=14 layer_type=Slice layer_name=
[bmprofile] tensor_id=-2 is_in=1 shape=[256x5] dtype=0 is_const=0 gaddr=4298076160 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=14 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4298043392 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=1 gdma_id=4 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=15 layer_type=Reshape layer_name=
[bmprofile] tensor_id=14 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4298043392 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=15 is_in=0 shape=[256] dtype=0 is_const=0 gaddr=4298043392 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=16 layer_type=Cast layer_name=
[bmprofile] tensor_id=15 is_in=1 shape=[256] dtype=0 is_const=0 gaddr=4298043392 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=16 is_in=0 shape=[256] dtype=6 is_const=0 gaddr=4298039296 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=1 gdma_id=5 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=2 gdma_id=5 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=2 gdma_id=6 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=17 layer_type=Slice layer_name=
[bmprofile] tensor_id=-3 is_in=1 shape=[256x5] dtype=0 is_const=0 gaddr=4298076160 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=17 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4298035200 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=2 gdma_id=7 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=18 layer_type=Reshape layer_name=
[bmprofile] tensor_id=17 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4298035200 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=18 is_in=0 shape=[256] dtype=0 is_const=0 gaddr=4298035200 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=19 layer_type=Cast layer_name=
[bmprofile] tensor_id=18 is_in=1 shape=[256] dtype=0 is_const=0 gaddr=4298035200 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=19 is_in=0 shape=[256] dtype=6 is_const=0 gaddr=4298031104 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=2 gdma_id=8 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=3 gdma_id=8 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=3 gdma_id=9 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=20 layer_type=Slice layer_name=
[bmprofile] tensor_id=-4 is_in=1 shape=[256x5] dtype=0 is_const=0 gaddr=4298076160 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=20 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4298027008 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=3 gdma_id=10 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=21 layer_type=Reshape layer_name=
[bmprofile] tensor_id=20 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4298027008 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=21 is_in=0 shape=[256] dtype=0 is_const=0 gaddr=4298027008 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=22 layer_type=Cast layer_name=
[bmprofile] tensor_id=21 is_in=1 shape=[256] dtype=0 is_const=0 gaddr=4298027008 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=22 is_in=0 shape=[256] dtype=6 is_const=0 gaddr=4298022912 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=3 gdma_id=11 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=4 gdma_id=11 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=4 gdma_id=12 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=23 layer_type=Slice layer_name=
[bmprofile] tensor_id=-5 is_in=1 shape=[256x5] dtype=0 is_const=0 gaddr=4298076160 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=23 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4298018816 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=4 gdma_id=13 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=24 layer_type=Reshape layer_name=
[bmprofile] tensor_id=23 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4298018816 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=24 is_in=0 shape=[256] dtype=0 is_const=0 gaddr=4298018816 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=25 layer_type=Cast layer_name=
[bmprofile] tensor_id=24 is_in=1 shape=[256] dtype=0 is_const=0 gaddr=4298018816 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=25 is_in=0 shape=[256] dtype=6 is_const=0 gaddr=4298014720 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=4 gdma_id=14 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=5 gdma_id=14 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=5 gdma_id=15 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=27 layer_type=Gather layer_name=
[bmprofile] tensor_id=26 is_in=1 shape=[6032x64] dtype=0 is_const=1 gaddr=4294967296 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=13 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4298047488 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=27 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=5 gdma_id=16 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=6 gdma_id=16 bd_func=3
[bmprofile] bd cmd_id bd_id=7 gdma_id=16 bd_func=13
[bmprofile] gdma cmd_id bd_id=7 gdma_id=17 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=28 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=27 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=28 is_in=0 shape=[1x256x64] dtype=0 is_const=0 gaddr=4297682944 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=7 gdma_id=18 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=30 layer_type=Gather layer_name=
[bmprofile] tensor_id=29 is_in=1 shape=[3027x64] dtype=0 is_const=1 gaddr=4296511488 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=16 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4298039296 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=30 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=7 gdma_id=19 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=8 gdma_id=19 bd_func=3
[bmprofile] bd cmd_id bd_id=9 gdma_id=19 bd_func=13
[bmprofile] gdma cmd_id bd_id=9 gdma_id=20 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=31 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=30 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=31 is_in=0 shape=[1x256x64] dtype=0 is_const=0 gaddr=4297748480 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=9 gdma_id=21 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=33 layer_type=Gather layer_name=
[bmprofile] tensor_id=32 is_in=1 shape=[3x64] dtype=0 is_const=1 gaddr=4297289728 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=19 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4298031104 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=33 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=9 gdma_id=22 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=10 gdma_id=22 bd_func=3
[bmprofile] bd cmd_id bd_id=11 gdma_id=22 bd_func=13
[bmprofile] gdma cmd_id bd_id=11 gdma_id=23 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=34 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=33 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=34 is_in=0 shape=[1x256x64] dtype=0 is_const=0 gaddr=4297814016 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=11 gdma_id=24 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=36 layer_type=Gather layer_name=
[bmprofile] tensor_id=35 is_in=1 shape=[8x64] dtype=0 is_const=1 gaddr=4297293824 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=22 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4298022912 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=36 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=11 gdma_id=25 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=12 gdma_id=25 bd_func=3
[bmprofile] bd cmd_id bd_id=13 gdma_id=25 bd_func=13
[bmprofile] gdma cmd_id bd_id=13 gdma_id=26 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=37 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=36 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=37 is_in=0 shape=[1x256x64] dtype=0 is_const=0 gaddr=4297879552 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=13 gdma_id=27 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=39 layer_type=Gather layer_name=
[bmprofile] tensor_id=38 is_in=1 shape=[22x64] dtype=0 is_const=1 gaddr=4297297920 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=25 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4298014720 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=39 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=13 gdma_id=28 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=14 gdma_id=28 bd_func=3
[bmprofile] bd cmd_id bd_id=15 gdma_id=28 bd_func=13
[bmprofile] gdma cmd_id bd_id=15 gdma_id=29 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=40 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=39 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=40 is_in=0 shape=[1x256x64] dtype=0 is_const=0 gaddr=4297945088 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=15 gdma_id=30 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=41 layer_type=Concat layer_name=
[bmprofile] tensor_id=28 is_in=1 shape=[1x256x64] dtype=0 is_const=0 gaddr=4297682944 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=31 is_in=1 shape=[1x256x64] dtype=0 is_const=0 gaddr=4297748480 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=34 is_in=1 shape=[1x256x64] dtype=0 is_const=0 gaddr=4297814016 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=37 is_in=1 shape=[1x256x64] dtype=0 is_const=0 gaddr=4297879552 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=40 is_in=1 shape=[1x256x64] dtype=0 is_const=0 gaddr=4297945088 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=41 is_in=0 shape=[5x256x64] dtype=0 is_const=0 gaddr=4297682944 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=42 layer_type=Reduce layer_name=
[bmprofile] tensor_id=41 is_in=1 shape=[5x256x64] dtype=0 is_const=0 gaddr=4297682944 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=42 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=15 gdma_id=31 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=16 gdma_id=31 bd_func=1
[bmprofile] gdma cmd_id bd_id=15 gdma_id=32 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=16 gdma_id=33 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=17 gdma_id=32 bd_func=1
[bmprofile] gdma cmd_id bd_id=16 gdma_id=34 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=17 gdma_id=35 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=18 gdma_id=34 bd_func=1
[bmprofile] gdma cmd_id bd_id=17 gdma_id=36 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=18 gdma_id=37 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=19 gdma_id=36 bd_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=19 gdma_id=38 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=44 layer_type=Gather layer_name=
[bmprofile] tensor_id=43 is_in=1 shape=[6032x1] dtype=0 is_const=1 gaddr=4297306112 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=13 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4298047488 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=44 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4298010624 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=19 gdma_id=39 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=20 gdma_id=39 bd_func=3
[bmprofile] bd cmd_id bd_id=21 gdma_id=39 bd_func=13
[bmprofile] gdma cmd_id bd_id=21 gdma_id=40 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=45 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=44 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4298010624 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=45 is_in=0 shape=[1x256x1] dtype=0 is_const=0 gaddr=4297420800 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=21 gdma_id=41 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=47 layer_type=Gather layer_name=
[bmprofile] tensor_id=46 is_in=1 shape=[3027x1] dtype=0 is_const=1 gaddr=4297330688 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=16 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4298039296 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=47 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4298010624 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=21 gdma_id=42 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=22 gdma_id=42 bd_func=3
[bmprofile] bd cmd_id bd_id=23 gdma_id=42 bd_func=13
[bmprofile] gdma cmd_id bd_id=23 gdma_id=43 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=48 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=47 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4298010624 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=48 is_in=0 shape=[1x256x1] dtype=0 is_const=0 gaddr=4297421824 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=23 gdma_id=44 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=50 layer_type=Gather layer_name=
[bmprofile] tensor_id=49 is_in=1 shape=[3x1] dtype=0 is_const=1 gaddr=4297342976 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=19 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4298031104 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=50 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4298010624 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=23 gdma_id=45 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=24 gdma_id=45 bd_func=3
[bmprofile] bd cmd_id bd_id=25 gdma_id=45 bd_func=13
[bmprofile] gdma cmd_id bd_id=25 gdma_id=46 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=51 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=50 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4298010624 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=51 is_in=0 shape=[1x256x1] dtype=0 is_const=0 gaddr=4297422848 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=25 gdma_id=47 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=53 layer_type=Gather layer_name=
[bmprofile] tensor_id=52 is_in=1 shape=[8x1] dtype=0 is_const=1 gaddr=4297347072 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=22 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4298022912 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=53 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4298010624 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=25 gdma_id=48 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=26 gdma_id=48 bd_func=3
[bmprofile] bd cmd_id bd_id=27 gdma_id=48 bd_func=13
[bmprofile] gdma cmd_id bd_id=27 gdma_id=49 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=54 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=53 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4298010624 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=54 is_in=0 shape=[1x256x1] dtype=0 is_const=0 gaddr=4297423872 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=27 gdma_id=50 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=56 layer_type=Gather layer_name=
[bmprofile] tensor_id=55 is_in=1 shape=[22x1] dtype=0 is_const=1 gaddr=4297351168 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=25 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4298014720 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=56 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4298010624 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=27 gdma_id=51 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=28 gdma_id=51 bd_func=3
[bmprofile] bd cmd_id bd_id=29 gdma_id=51 bd_func=13
[bmprofile] gdma cmd_id bd_id=29 gdma_id=52 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=57 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=56 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4298010624 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=57 is_in=0 shape=[1x256x1] dtype=0 is_const=0 gaddr=4297424896 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=29 gdma_id=53 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=58 layer_type=Concat layer_name=
[bmprofile] tensor_id=45 is_in=1 shape=[1x256x1] dtype=0 is_const=0 gaddr=4297420800 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=48 is_in=1 shape=[1x256x1] dtype=0 is_const=0 gaddr=4297421824 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=51 is_in=1 shape=[1x256x1] dtype=0 is_const=0 gaddr=4297422848 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=54 is_in=1 shape=[1x256x1] dtype=0 is_const=0 gaddr=4297423872 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=57 is_in=1 shape=[1x256x1] dtype=0 is_const=0 gaddr=4297424896 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=58 is_in=0 shape=[5x256x1] dtype=0 is_const=0 gaddr=4297420800 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=59 layer_type=Reduce layer_name=
[bmprofile] tensor_id=58 is_in=1 shape=[5x256x1] dtype=0 is_const=0 gaddr=4297420800 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=59 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4298010624 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=29 gdma_id=54 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=30 gdma_id=54 bd_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=30 gdma_id=55 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=60 layer_type=AddConst layer_name=
[bmprofile] tensor_id=59 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4298010624 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=60 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4298084352 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=30 gdma_id=56 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=31 gdma_id=56 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=31 gdma_id=57 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=61 layer_type=Mul layer_name=
[bmprofile] tensor_id=42 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=42 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=61 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4298010624 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=31 gdma_id=58 gdma_dir=0 gdma_func=0
[bmprofile] gdma cmd_id bd_id=31 gdma_id=59 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=32 gdma_id=59 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=32 gdma_id=60 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=62 layer_type=Mul layer_name=
[bmprofile] tensor_id=41 is_in=1 shape=[5x256x64] dtype=0 is_const=0 gaddr=4297682944 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=41 is_in=1 shape=[5x256x64] dtype=0 is_const=0 gaddr=4297682944 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=62 is_in=0 shape=[5x256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=32 gdma_id=61 gdma_dir=0 gdma_func=0
[bmprofile] gdma cmd_id bd_id=32 gdma_id=62 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=33 gdma_id=62 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=33 gdma_id=63 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=63 layer_type=Reduce layer_name=
[bmprofile] tensor_id=62 is_in=1 shape=[5x256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=63 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4297682944 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=33 gdma_id=64 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=34 gdma_id=64 bd_func=1
[bmprofile] gdma cmd_id bd_id=33 gdma_id=65 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=34 gdma_id=66 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=35 gdma_id=65 bd_func=1
[bmprofile] gdma cmd_id bd_id=34 gdma_id=67 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=35 gdma_id=68 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=36 gdma_id=67 bd_func=1
[bmprofile] gdma cmd_id bd_id=35 gdma_id=69 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=36 gdma_id=70 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=37 gdma_id=69 bd_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=37 gdma_id=71 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=64 layer_type=Sub layer_name=
[bmprofile] tensor_id=61 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4298010624 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=63 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4297682944 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=64 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4297420800 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=37 gdma_id=72 gdma_dir=0 gdma_func=0
[bmprofile] gdma cmd_id bd_id=37 gdma_id=73 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=38 gdma_id=73 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=38 gdma_id=74 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=65 layer_type=MulConst layer_name=
[bmprofile] tensor_id=64 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4297420800 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=65 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=38 gdma_id=75 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=39 gdma_id=75 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=39 gdma_id=76 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=66 layer_type=Reduce layer_name=
[bmprofile] tensor_id=65 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=66 is_in=0 shape=[256] dtype=0 is_const=0 gaddr=4297420800 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=39 gdma_id=77 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=40 gdma_id=77 bd_func=1
[bmprofile] bd cmd_id bd_id=41 gdma_id=77 bd_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=41 gdma_id=78 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=67 layer_type=Reshape layer_name=
[bmprofile] tensor_id=66 is_in=1 shape=[256] dtype=0 is_const=0 gaddr=4297420800 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=67 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4297420800 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=68 layer_type=Add layer_name=
[bmprofile] tensor_id=60 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4298084352 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=67 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4297420800 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=68 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4297359360 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=41 gdma_id=79 gdma_dir=0 gdma_func=0
[bmprofile] gdma cmd_id bd_id=41 gdma_id=80 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=42 gdma_id=80 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=42 gdma_id=81 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=69 layer_type=Active layer_name=
[bmprofile] tensor_id=68 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4297359360 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=69 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=42 gdma_id=82 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=43 gdma_id=82 bd_func=5
[bmprofile] bd cmd_id bd_id=44 gdma_id=82 bd_func=5
[bmprofile] bd cmd_id bd_id=45 gdma_id=82 bd_func=3
[bmprofile] bd cmd_id bd_id=46 gdma_id=82 bd_func=3
[bmprofile] bd cmd_id bd_id=47 gdma_id=82 bd_func=3
[bmprofile] bd cmd_id bd_id=48 gdma_id=82 bd_func=3
[bmprofile] bd cmd_id bd_id=49 gdma_id=82 bd_func=3
[bmprofile] bd cmd_id bd_id=50 gdma_id=82 bd_func=9
[bmprofile] bd cmd_id bd_id=51 gdma_id=82 bd_func=3
[bmprofile] bd cmd_id bd_id=52 gdma_id=82 bd_func=3
[bmprofile] bd cmd_id bd_id=53 gdma_id=82 bd_func=6
[bmprofile] bd cmd_id bd_id=54 gdma_id=82 bd_func=3
[bmprofile] bd cmd_id bd_id=55 gdma_id=82 bd_func=3
[bmprofile] bd cmd_id bd_id=56 gdma_id=82 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=56 gdma_id=83 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] bd cmd_id bd_id=0 gdma_id=0 bd_func=0
[bmprofile] gdma cmd_id bd_id=0 gdma_id=84 gdma_dir=0 gdma_func=6
[bmprofile] end to run subnet_id=0
