[bmprofile] is_mlir=1
...Start Profile Log...
[bmprofile] start to run subnet_id=0

[bmprofile] global_layer: layer_id=11 layer_type=Slice layer_name=
[bmprofile] tensor_id=-1 is_in=1 shape=[256x5] dtype=0 is_const=0 gaddr=4302082048 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=11 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4301692928 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=0 gdma_id=1 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=12 layer_type=Reshape layer_name=
[bmprofile] tensor_id=11 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4301692928 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=12 is_in=0 shape=[256] dtype=0 is_const=0 gaddr=4301692928 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=13 layer_type=Cast layer_name=
[bmprofile] tensor_id=12 is_in=1 shape=[256] dtype=0 is_const=0 gaddr=4301692928 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=13 is_in=0 shape=[256] dtype=6 is_const=0 gaddr=4301688832 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=0 gdma_id=2 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=1 gdma_id=2 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=1 gdma_id=3 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=15 layer_type=Gather layer_name=
[bmprofile] tensor_id=14 is_in=1 shape=[6032x64] dtype=0 is_const=1 gaddr=4294967296 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=13 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4301688832 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=15 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4302016512 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=1 gdma_id=4 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=2 gdma_id=4 bd_func=3
[bmprofile] bd cmd_id bd_id=3 gdma_id=4 bd_func=13
[bmprofile] gdma cmd_id bd_id=3 gdma_id=5 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=16 layer_type=Slice layer_name=
[bmprofile] tensor_id=-2 is_in=1 shape=[256x5] dtype=0 is_const=0 gaddr=4302082048 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=16 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4301729792 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=3 gdma_id=6 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=17 layer_type=Reshape layer_name=
[bmprofile] tensor_id=16 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4301729792 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=17 is_in=0 shape=[256] dtype=0 is_const=0 gaddr=4301729792 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=18 layer_type=Cast layer_name=
[bmprofile] tensor_id=17 is_in=1 shape=[256] dtype=0 is_const=0 gaddr=4301729792 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=18 is_in=0 shape=[256] dtype=6 is_const=0 gaddr=4301725696 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=3 gdma_id=7 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=4 gdma_id=7 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=4 gdma_id=8 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=20 layer_type=Gather layer_name=
[bmprofile] tensor_id=19 is_in=1 shape=[3027x64] dtype=0 is_const=1 gaddr=4296511488 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=18 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4301725696 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=20 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4301950976 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=4 gdma_id=9 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=5 gdma_id=9 bd_func=3
[bmprofile] bd cmd_id bd_id=6 gdma_id=9 bd_func=13
[bmprofile] gdma cmd_id bd_id=6 gdma_id=10 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=21 layer_type=Slice layer_name=
[bmprofile] tensor_id=-3 is_in=1 shape=[256x5] dtype=0 is_const=0 gaddr=4302082048 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=21 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4301721600 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=6 gdma_id=11 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=22 layer_type=Reshape layer_name=
[bmprofile] tensor_id=21 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4301721600 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=22 is_in=0 shape=[256] dtype=0 is_const=0 gaddr=4301721600 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=23 layer_type=Cast layer_name=
[bmprofile] tensor_id=22 is_in=1 shape=[256] dtype=0 is_const=0 gaddr=4301721600 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=23 is_in=0 shape=[256] dtype=6 is_const=0 gaddr=4301717504 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=6 gdma_id=12 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=7 gdma_id=12 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=7 gdma_id=13 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=25 layer_type=Gather layer_name=
[bmprofile] tensor_id=24 is_in=1 shape=[3x64] dtype=0 is_const=1 gaddr=4297289728 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=23 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4301717504 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=25 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4301885440 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=7 gdma_id=14 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=8 gdma_id=14 bd_func=3
[bmprofile] bd cmd_id bd_id=9 gdma_id=14 bd_func=13
[bmprofile] gdma cmd_id bd_id=9 gdma_id=15 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=26 layer_type=Slice layer_name=
[bmprofile] tensor_id=-4 is_in=1 shape=[256x5] dtype=0 is_const=0 gaddr=4302082048 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=26 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4301713408 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=9 gdma_id=16 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=27 layer_type=Reshape layer_name=
[bmprofile] tensor_id=26 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4301713408 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=27 is_in=0 shape=[256] dtype=0 is_const=0 gaddr=4301713408 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=28 layer_type=Cast layer_name=
[bmprofile] tensor_id=27 is_in=1 shape=[256] dtype=0 is_const=0 gaddr=4301713408 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=28 is_in=0 shape=[256] dtype=6 is_const=0 gaddr=4301709312 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=9 gdma_id=17 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=10 gdma_id=17 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=10 gdma_id=18 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=30 layer_type=Gather layer_name=
[bmprofile] tensor_id=29 is_in=1 shape=[8x64] dtype=0 is_const=1 gaddr=4297293824 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=28 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4301709312 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=30 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4301819904 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=10 gdma_id=19 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=11 gdma_id=19 bd_func=3
[bmprofile] bd cmd_id bd_id=12 gdma_id=19 bd_func=13
[bmprofile] gdma cmd_id bd_id=12 gdma_id=20 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=31 layer_type=Slice layer_name=
[bmprofile] tensor_id=-5 is_in=1 shape=[256x5] dtype=0 is_const=0 gaddr=4302082048 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=31 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4301705216 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=12 gdma_id=21 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=32 layer_type=Reshape layer_name=
[bmprofile] tensor_id=31 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4301705216 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=32 is_in=0 shape=[256] dtype=0 is_const=0 gaddr=4301705216 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=33 layer_type=Cast layer_name=
[bmprofile] tensor_id=32 is_in=1 shape=[256] dtype=0 is_const=0 gaddr=4301705216 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=33 is_in=0 shape=[256] dtype=6 is_const=0 gaddr=4301701120 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=12 gdma_id=22 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=13 gdma_id=22 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=13 gdma_id=23 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=35 layer_type=Gather layer_name=
[bmprofile] tensor_id=34 is_in=1 shape=[22x64] dtype=0 is_const=1 gaddr=4297297920 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=33 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4301701120 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=35 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4301754368 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=13 gdma_id=24 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=14 gdma_id=24 bd_func=3
[bmprofile] bd cmd_id bd_id=15 gdma_id=24 bd_func=13
[bmprofile] gdma cmd_id bd_id=15 gdma_id=25 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=36 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=15 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4302016512 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=36 is_in=0 shape=[1x256x64] dtype=0 is_const=0 gaddr=4301361152 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=15 gdma_id=26 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=37 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=20 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4301950976 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=37 is_in=0 shape=[1x256x64] dtype=0 is_const=0 gaddr=4301426688 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=15 gdma_id=27 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=38 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=25 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4301885440 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=38 is_in=0 shape=[1x256x64] dtype=0 is_const=0 gaddr=4301492224 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=15 gdma_id=28 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=39 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=30 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4301819904 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=39 is_in=0 shape=[1x256x64] dtype=0 is_const=0 gaddr=4301557760 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=15 gdma_id=29 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=40 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=35 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4301754368 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=40 is_in=0 shape=[1x256x64] dtype=0 is_const=0 gaddr=4301623296 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=15 gdma_id=30 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=41 layer_type=Concat layer_name=
[bmprofile] tensor_id=36 is_in=1 shape=[1x256x64] dtype=0 is_const=0 gaddr=4301361152 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=37 is_in=1 shape=[1x256x64] dtype=0 is_const=0 gaddr=4301426688 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=38 is_in=1 shape=[1x256x64] dtype=0 is_const=0 gaddr=4301492224 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=39 is_in=1 shape=[1x256x64] dtype=0 is_const=0 gaddr=4301557760 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=40 is_in=1 shape=[1x256x64] dtype=0 is_const=0 gaddr=4301623296 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=41 is_in=0 shape=[5x256x64] dtype=0 is_const=0 gaddr=4301361152 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=42 layer_type=Reduce layer_name=
[bmprofile] tensor_id=41 is_in=1 shape=[5x256x64] dtype=0 is_const=0 gaddr=4301361152 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=42 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4301033472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
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
[bmprofile] tensor_id=13 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4301688832 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=44 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4301697024 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=19 gdma_id=39 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=20 gdma_id=39 bd_func=3
[bmprofile] bd cmd_id bd_id=21 gdma_id=39 bd_func=13
[bmprofile] gdma cmd_id bd_id=21 gdma_id=40 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=45 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=44 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4301697024 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=45 is_in=0 shape=[1x256x1] dtype=0 is_const=0 gaddr=4301688832 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=21 gdma_id=41 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=47 layer_type=Gather layer_name=
[bmprofile] tensor_id=46 is_in=1 shape=[3027x1] dtype=0 is_const=1 gaddr=4297330688 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=18 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4301725696 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=47 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4301697024 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=21 gdma_id=42 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=22 gdma_id=42 bd_func=3
[bmprofile] bd cmd_id bd_id=23 gdma_id=42 bd_func=13
[bmprofile] gdma cmd_id bd_id=23 gdma_id=43 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=48 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=47 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4301697024 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=48 is_in=0 shape=[1x256x1] dtype=0 is_const=0 gaddr=4301689856 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=23 gdma_id=44 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=50 layer_type=Gather layer_name=
[bmprofile] tensor_id=49 is_in=1 shape=[3x1] dtype=0 is_const=1 gaddr=4297342976 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=23 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4301717504 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=50 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4301697024 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=23 gdma_id=45 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=24 gdma_id=45 bd_func=3
[bmprofile] bd cmd_id bd_id=25 gdma_id=45 bd_func=13
[bmprofile] gdma cmd_id bd_id=25 gdma_id=46 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=51 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=50 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4301697024 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=51 is_in=0 shape=[1x256x1] dtype=0 is_const=0 gaddr=4301690880 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=25 gdma_id=47 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=53 layer_type=Gather layer_name=
[bmprofile] tensor_id=52 is_in=1 shape=[8x1] dtype=0 is_const=1 gaddr=4297347072 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=28 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4301709312 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=53 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4301697024 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=25 gdma_id=48 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=26 gdma_id=48 bd_func=3
[bmprofile] bd cmd_id bd_id=27 gdma_id=48 bd_func=13
[bmprofile] gdma cmd_id bd_id=27 gdma_id=49 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=54 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=53 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4301697024 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=54 is_in=0 shape=[1x256x1] dtype=0 is_const=0 gaddr=4301691904 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=27 gdma_id=50 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=56 layer_type=Gather layer_name=
[bmprofile] tensor_id=55 is_in=1 shape=[22x1] dtype=0 is_const=1 gaddr=4297351168 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=33 is_in=1 shape=[256] dtype=6 is_const=0 gaddr=4301701120 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=56 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4301697024 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=27 gdma_id=51 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=28 gdma_id=51 bd_func=3
[bmprofile] bd cmd_id bd_id=29 gdma_id=51 bd_func=13
[bmprofile] gdma cmd_id bd_id=29 gdma_id=52 gdma_dir=0 gdma_func=7

[bmprofile] global_layer: layer_id=57 layer_type=Unsqueeze layer_name=
[bmprofile] tensor_id=56 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4301697024 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=57 is_in=0 shape=[1x256x1] dtype=0 is_const=0 gaddr=4301692928 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=29 gdma_id=53 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=58 layer_type=Concat layer_name=
[bmprofile] tensor_id=45 is_in=1 shape=[1x256x1] dtype=0 is_const=0 gaddr=4301688832 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=48 is_in=1 shape=[1x256x1] dtype=0 is_const=0 gaddr=4301689856 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=51 is_in=1 shape=[1x256x1] dtype=0 is_const=0 gaddr=4301690880 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=54 is_in=1 shape=[1x256x1] dtype=0 is_const=0 gaddr=4301691904 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=57 is_in=1 shape=[1x256x1] dtype=0 is_const=0 gaddr=4301692928 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=58 is_in=0 shape=[5x256x1] dtype=0 is_const=0 gaddr=4301688832 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=59 layer_type=Reduce layer_name=
[bmprofile] tensor_id=58 is_in=1 shape=[5x256x1] dtype=0 is_const=0 gaddr=4301688832 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=59 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4302094336 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=29 gdma_id=54 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=30 gdma_id=54 bd_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=30 gdma_id=55 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=60 layer_type=Mul layer_name=
[bmprofile] tensor_id=42 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4301033472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=42 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4301033472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=60 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4301688832 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=30 gdma_id=56 gdma_dir=0 gdma_func=0
[bmprofile] gdma cmd_id bd_id=30 gdma_id=57 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=31 gdma_id=57 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=31 gdma_id=58 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=61 layer_type=Mul layer_name=
[bmprofile] tensor_id=41 is_in=1 shape=[5x256x64] dtype=0 is_const=0 gaddr=4301361152 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=41 is_in=1 shape=[5x256x64] dtype=0 is_const=0 gaddr=4301361152 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=61 is_in=0 shape=[5x256x64] dtype=0 is_const=0 gaddr=4301033472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=31 gdma_id=59 gdma_dir=0 gdma_func=0
[bmprofile] gdma cmd_id bd_id=31 gdma_id=60 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=32 gdma_id=60 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=32 gdma_id=61 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=62 layer_type=Reduce layer_name=
[bmprofile] tensor_id=61 is_in=1 shape=[5x256x64] dtype=0 is_const=0 gaddr=4301033472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=62 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4301361152 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=32 gdma_id=62 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=33 gdma_id=62 bd_func=1
[bmprofile] gdma cmd_id bd_id=32 gdma_id=63 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=33 gdma_id=64 gdma_dir=0 gdma_func=0
[bmprofile] bd cmd_id bd_id=34 gdma_id=63 bd_func=1
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
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=36 gdma_id=69 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=63 layer_type=Sub layer_name=
[bmprofile] tensor_id=60 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4301688832 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=62 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4301361152 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=63 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4301099008 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=36 gdma_id=70 gdma_dir=0 gdma_func=0
[bmprofile] gdma cmd_id bd_id=36 gdma_id=71 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=37 gdma_id=71 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=37 gdma_id=72 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=64 layer_type=MulConst layer_name=
[bmprofile] tensor_id=63 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4301099008 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=64 is_in=0 shape=[256x64] dtype=0 is_const=0 gaddr=4301033472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=37 gdma_id=73 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=38 gdma_id=73 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=38 gdma_id=74 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=65 layer_type=Reduce layer_name=
[bmprofile] tensor_id=64 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4301033472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=65 is_in=0 shape=[256] dtype=0 is_const=0 gaddr=4301099008 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=38 gdma_id=75 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=39 gdma_id=75 bd_func=1
[bmprofile] bd cmd_id bd_id=40 gdma_id=75 bd_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=40 gdma_id=76 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=66 layer_type=Reshape layer_name=
[bmprofile] tensor_id=65 is_in=1 shape=[256] dtype=0 is_const=0 gaddr=4301099008 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=66 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4301099008 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0

[bmprofile] global_layer: layer_id=67 layer_type=Add layer_name=
[bmprofile] tensor_id=59 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4302094336 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=66 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4301099008 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=67 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4302090240 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=40 gdma_id=77 gdma_dir=0 gdma_func=0
[bmprofile] gdma cmd_id bd_id=40 gdma_id=78 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=41 gdma_id=78 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=41 gdma_id=79 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=68 layer_type=Concat layer_name=
[bmprofile] tensor_id=15 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4302016512 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=20 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4301950976 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=25 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4301885440 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=30 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4301819904 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=35 is_in=1 shape=[256x64] dtype=0 is_const=0 gaddr=4301754368 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=68 is_in=0 shape=[256x320] dtype=0 is_const=0 gaddr=4301033472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] gdma cmd_id bd_id=41 gdma_id=80 gdma_dir=0 gdma_func=0
[bmprofile] gdma cmd_id bd_id=41 gdma_id=81 gdma_dir=0 gdma_func=0
[bmprofile] gdma cmd_id bd_id=41 gdma_id=82 gdma_dir=0 gdma_func=0
[bmprofile] gdma cmd_id bd_id=41 gdma_id=83 gdma_dir=0 gdma_func=0
[bmprofile] gdma cmd_id bd_id=41 gdma_id=84 gdma_dir=0 gdma_func=0

[bmprofile] global_layer: layer_id=71 layer_type=MatMul layer_name=
[bmprofile] tensor_id=68 is_in=1 shape=[256x320] dtype=0 is_const=0 gaddr=4301033472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=69 is_in=1 shape=[320x500] dtype=0 is_const=1 gaddr=4297355264 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=70 is_in=1 shape=[1x1x1x500] dtype=0 is_const=1 gaddr=4297998336 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=71 is_in=0 shape=[256x500] dtype=0 is_const=0 gaddr=4301545472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=41 gdma_id=85 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=41 gdma_id=86 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=41 gdma_id=87 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=41 gdma_id=88 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=41 gdma_id=89 gdma_dir=0 gdma_func=1
[bmprofile] bd cmd_id bd_id=42 gdma_id=86 bd_func=2
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=42 gdma_id=90 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=42 gdma_id=91 gdma_dir=0 gdma_func=1
[bmprofile] bd cmd_id bd_id=43 gdma_id=89 bd_func=2
[bmprofile] bd cmd_id bd_id=44 gdma_id=89 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=44 gdma_id=92 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=44 gdma_id=93 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=44 gdma_id=94 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=44 gdma_id=95 gdma_dir=0 gdma_func=1
[bmprofile] bd cmd_id bd_id=45 gdma_id=91 bd_func=2
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=46 gdma_id=95 bd_func=2
[bmprofile] bd cmd_id bd_id=47 gdma_id=95 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=47 gdma_id=96 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=74 layer_type=MatMul layer_name=
[bmprofile] tensor_id=71 is_in=1 shape=[256x500] dtype=0 is_const=0 gaddr=4301545472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=72 is_in=1 shape=[500x500] dtype=0 is_const=1 gaddr=4298002432 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=73 is_in=1 shape=[1x1x1x500] dtype=0 is_const=1 gaddr=4299005952 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=74 is_in=0 shape=[256x500] dtype=0 is_const=0 gaddr=4301033472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=47 gdma_id=97 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=47 gdma_id=98 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=47 gdma_id=99 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=47 gdma_id=100 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=47 gdma_id=101 gdma_dir=0 gdma_func=1
[bmprofile] bd cmd_id bd_id=48 gdma_id=98 bd_func=2
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=48 gdma_id=102 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=48 gdma_id=103 gdma_dir=0 gdma_func=1
[bmprofile] bd cmd_id bd_id=49 gdma_id=101 bd_func=2
[bmprofile] bd cmd_id bd_id=50 gdma_id=101 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=50 gdma_id=104 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=50 gdma_id=105 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=50 gdma_id=106 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=50 gdma_id=107 gdma_dir=0 gdma_func=1
[bmprofile] bd cmd_id bd_id=51 gdma_id=103 bd_func=2
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=52 gdma_id=107 bd_func=2
[bmprofile] bd cmd_id bd_id=53 gdma_id=107 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=53 gdma_id=108 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=77 layer_type=MatMul layer_name=
[bmprofile] tensor_id=74 is_in=1 shape=[256x500] dtype=0 is_const=0 gaddr=4301033472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=75 is_in=1 shape=[500x500] dtype=0 is_const=1 gaddr=4299010048 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=76 is_in=1 shape=[1x1x1x500] dtype=0 is_const=1 gaddr=4300013568 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=77 is_in=0 shape=[256x500] dtype=0 is_const=0 gaddr=4301545472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=53 gdma_id=109 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=53 gdma_id=110 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=53 gdma_id=111 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=53 gdma_id=112 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=53 gdma_id=113 gdma_dir=0 gdma_func=1
[bmprofile] bd cmd_id bd_id=54 gdma_id=110 bd_func=2
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=54 gdma_id=114 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=54 gdma_id=115 gdma_dir=0 gdma_func=1
[bmprofile] bd cmd_id bd_id=55 gdma_id=113 bd_func=2
[bmprofile] bd cmd_id bd_id=56 gdma_id=113 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=56 gdma_id=116 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=56 gdma_id=117 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=56 gdma_id=118 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=56 gdma_id=119 gdma_dir=0 gdma_func=1
[bmprofile] bd cmd_id bd_id=57 gdma_id=115 bd_func=2
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=58 gdma_id=119 bd_func=2
[bmprofile] bd cmd_id bd_id=59 gdma_id=119 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=59 gdma_id=120 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=80 layer_type=MatMul layer_name=
[bmprofile] tensor_id=77 is_in=1 shape=[256x500] dtype=0 is_const=0 gaddr=4301545472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=78 is_in=1 shape=[500x500] dtype=0 is_const=1 gaddr=4300017664 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=79 is_in=1 shape=[1x1x1x500] dtype=0 is_const=1 gaddr=4301021184 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=80 is_in=0 shape=[256x500] dtype=0 is_const=0 gaddr=4301033472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=59 gdma_id=121 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=59 gdma_id=122 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=59 gdma_id=123 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=59 gdma_id=124 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=59 gdma_id=125 gdma_dir=0 gdma_func=1
[bmprofile] bd cmd_id bd_id=60 gdma_id=122 bd_func=2
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=60 gdma_id=126 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=60 gdma_id=127 gdma_dir=0 gdma_func=1
[bmprofile] bd cmd_id bd_id=61 gdma_id=125 bd_func=2
[bmprofile] bd cmd_id bd_id=62 gdma_id=125 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=62 gdma_id=128 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=62 gdma_id=129 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=62 gdma_id=130 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=62 gdma_id=131 gdma_dir=0 gdma_func=1
[bmprofile] bd cmd_id bd_id=63 gdma_id=127 bd_func=2
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=64 gdma_id=131 bd_func=2
[bmprofile] bd cmd_id bd_id=65 gdma_id=131 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=65 gdma_id=132 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=83 layer_type=MatMul layer_name=
[bmprofile] tensor_id=80 is_in=1 shape=[256x500] dtype=0 is_const=0 gaddr=4301033472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=81 is_in=1 shape=[500x1] dtype=0 is_const=1 gaddr=4301025280 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=82 is_in=1 shape=[1x1x1x1] dtype=0 is_const=1 gaddr=4301029376 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=83 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4301545472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=65 gdma_id=133 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=65 gdma_id=134 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=65 gdma_id=135 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=65 gdma_id=136 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=65 gdma_id=137 gdma_dir=0 gdma_func=1
[bmprofile] bd cmd_id bd_id=66 gdma_id=134 bd_func=2
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=66 gdma_id=138 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=66 gdma_id=139 gdma_dir=0 gdma_func=1
[bmprofile] bd cmd_id bd_id=67 gdma_id=137 bd_func=2
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=67 gdma_id=140 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=67 gdma_id=141 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=67 gdma_id=142 gdma_dir=0 gdma_func=1
[bmprofile] gdma cmd_id bd_id=67 gdma_id=143 gdma_dir=0 gdma_func=1
[bmprofile] bd cmd_id bd_id=68 gdma_id=139 bd_func=2
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=69 gdma_id=143 bd_func=2
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=69 gdma_id=144 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=84 layer_type=Add layer_name=
[bmprofile] tensor_id=67 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4302090240 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=83 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4301545472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=84 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4301037568 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=69 gdma_id=145 gdma_dir=0 gdma_func=0
[bmprofile] gdma cmd_id bd_id=69 gdma_id=146 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=70 gdma_id=146 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=70 gdma_id=147 gdma_dir=0 gdma_func=0
[bmprofile] end parallel.

[bmprofile] global_layer: layer_id=85 layer_type=Active layer_name=
[bmprofile] tensor_id=84 is_in=1 shape=[256x1] dtype=0 is_const=0 gaddr=4301037568 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] tensor_id=85 is_in=0 shape=[256x1] dtype=0 is_const=0 gaddr=4301033472 gsize=0 loffset=0 nslice=0 hslice=0 l2addr=0
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=70 gdma_id=148 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] bd cmd_id bd_id=71 gdma_id=148 bd_func=5
[bmprofile] bd cmd_id bd_id=72 gdma_id=148 bd_func=5
[bmprofile] bd cmd_id bd_id=73 gdma_id=148 bd_func=3
[bmprofile] bd cmd_id bd_id=74 gdma_id=148 bd_func=3
[bmprofile] bd cmd_id bd_id=75 gdma_id=148 bd_func=3
[bmprofile] bd cmd_id bd_id=76 gdma_id=148 bd_func=3
[bmprofile] bd cmd_id bd_id=77 gdma_id=148 bd_func=3
[bmprofile] bd cmd_id bd_id=78 gdma_id=148 bd_func=9
[bmprofile] bd cmd_id bd_id=79 gdma_id=148 bd_func=3
[bmprofile] bd cmd_id bd_id=80 gdma_id=148 bd_func=3
[bmprofile] bd cmd_id bd_id=81 gdma_id=148 bd_func=6
[bmprofile] bd cmd_id bd_id=82 gdma_id=148 bd_func=3
[bmprofile] bd cmd_id bd_id=83 gdma_id=148 bd_func=3
[bmprofile] bd cmd_id bd_id=84 gdma_id=148 bd_func=3
[bmprofile] end parallel.
[bmprofile] start parallel.
[bmprofile] gdma cmd_id bd_id=84 gdma_id=149 gdma_dir=0 gdma_func=1
[bmprofile] end parallel.
[bmprofile] bd cmd_id bd_id=0 gdma_id=0 bd_func=0
[bmprofile] gdma cmd_id bd_id=0 gdma_id=150 gdma_dir=0 gdma_func=6
[bmprofile] end to run subnet_id=0
