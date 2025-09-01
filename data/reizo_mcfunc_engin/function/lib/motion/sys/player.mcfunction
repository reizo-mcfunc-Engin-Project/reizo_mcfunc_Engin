#> reizo_mcfunc_engin:lib/motion/sys/player
#
# プレイヤー用の補正計算
#
# @within function reizo_mcfunc_engin:lib/motion/*

#> 計算用にPosをスコアに格納。
    # X座標
    execute \
    store result score $VectorX reizo_mcfunc_Engin.Temp run \
    data get storage reizo_mcfunc_engin:lib Args.Pos[0] 100
    # Y座標
    execute \
    store result score $VectorY reizo_mcfunc_Engin.Temp run \
    data get storage reizo_mcfunc_engin:lib Args.Pos[1] 100
    # Z座標
    execute \
    store result score $VectorZ reizo_mcfunc_Engin.Temp run \
    data get storage reizo_mcfunc_engin:lib Args.Pos[2] 100

#> ベクトルの補正計算をする。
    # X座標
    scoreboard players operation $VectorX reizo_mcfunc_Engin.Temp *= $MotionPower reizo_mcfunc_Engin.Temp
    # Y座標
    scoreboard players operation $VectorY reizo_mcfunc_Engin.Temp *= $MotionPower reizo_mcfunc_Engin.Temp
    # Z座標
    scoreboard players operation $VectorZ reizo_mcfunc_Engin.Temp *= $MotionPower reizo_mcfunc_Engin.Temp

#> 補正計算は終了したので、値をstorageに移行、EntityにMotionを実行。
#> 計算のために1000倍したのでそれを0.00001倍して元の値に戻す。
    # X座標
    execute \
    store result score $x hb.Motion run \
    scoreboard players get $VectorX reizo_mcfunc_Engin.Temp
    # Y座標
    execute \
    store result score $y hb.Motion run \
    scoreboard players get $VectorY reizo_mcfunc_Engin.Temp
    # Z座標
    execute \
    store result score $z hb.Motion run \
    scoreboard players get $VectorZ reizo_mcfunc_Engin.Temp
    # Motion適応
    function #p_motion:xyz