#> reizo_mcfunc_engin:lib/wind_p_motion/_
#
# プレイヤーにモーションを与える。
#
# @public

# Tag付与
tag @s add reizo_mcfunc_Engin.Wind_P_Motion.TP
tag @s add reizo_mcfunc_Engin.Wind_P_Motion.This

# 現在位置にmarker設置
summon marker ~ ~ ~ {Tags:["reizo_mcfunc_Engin.Wind_P_Motion.BackMarker"]}

# めちゃ上
tp @s ~ ~1000 ~

# アーマースタンド
schedule function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/_ 1t

schedule function reizo_mcfunc_engin:lib/wind_p_motion/kill 1t

schedule function reizo_mcfunc_engin:lib/wind_p_motion/tp 1t