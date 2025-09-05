#> reizo_mcfunc_engin:lib/wind_p_motion/sys/before
#
# 
#
# @within function reizo_mcfunc_engin:lib/wind_p_motion/_

# Tag付与
tag @s add reizo_mcfunc_Engin.Wind_P_Motion.TP
tag @s add reizo_mcfunc_Engin.Wind_P_Motion.This

# 現在位置にmarker設置
summon marker ~ ~ ~ {Tags:["reizo_mcfunc_Engin.Wind_P_Motion.BackMarker"]}

# 上に移動
tp @s ~ ~1000 ~