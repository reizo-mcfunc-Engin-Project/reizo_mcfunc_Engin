#> reizo_mcfunc_engin:lib/wind_p_motion/sys/tp
#
# 
#
# @within function reizo_mcfunc_engin:lib/wind_p_motion/after

# markerにTP
execute \
at @n[tag=reizo_mcfunc_Engin.Wind_P_Motion.BackMarker] run \
tp @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.TP,limit=1] ~ ~ ~

# markerKIll
kill @n[tag=reizo_mcfunc_Engin.Wind_P_Motion.BackMarker]

# Tag消し
tag @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.TP,limit=1] remove reizo_mcfunc_Engin.Wind_P_Motion.TP

# スコアリセット
scoreboard players reset $strength reizo_mcfunc_Engin.Temp
scoreboard players reset $x reizo_mcfunc_Engin.Temp
scoreboard players reset $y reizo_mcfunc_Engin.Temp
scoreboard players reset $z reizo_mcfunc_Engin.Temp