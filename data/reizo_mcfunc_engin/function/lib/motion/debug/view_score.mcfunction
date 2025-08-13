#> reizo_mcfunc_engin:lib/motion/sys/reset/_
#
# リセットする前にこっちに入れておく。
#
# @within function reizo_mcfunc_engin:lib/motion/sys/reset/_

#> デバッグ用の値をリセット
    scoreboard players reset $Debug_VectorX reizo_mcfunc_Engin.Temp
    scoreboard players reset $Debug_VectorY reizo_mcfunc_Engin.Temp
    scoreboard players reset $Debug_VectorZ reizo_mcfunc_Engin.Temp

#> デバッグ用の値にコピー
    scoreboard players operation $Debug_VectorX reizo_mcfunc_Engin.Temp = $VectorX reizo_mcfunc_Engin.Temp
    scoreboard players operation $Debug_VectorY reizo_mcfunc_Engin.Temp = $VectorY reizo_mcfunc_Engin.Temp
    scoreboard players operation $Debug_VectorZ reizo_mcfunc_Engin.Temp = $VectorZ reizo_mcfunc_Engin.Temp