#> reizo_mcfunc_engin:lib/wind_p_motion/summon_as/_
#
# 
#
# @within function reizo_mcfunc_engin:lib/wind_p_motion/_

#> 値がない、または0以下ならデフォの値に設定
    # Null
    execute \
    unless score $P_MotionPower reizo_mcfunc_Engin._ matches -2147483648..2147483647 run \
    scoreboard players set $P_MotionPower reizo_mcfunc_Engin.Temp 3
    # 0以下
    execute \
    if score $P_MotionPower reizo_mcfunc_Engin._ matches ..0 run \
    scoreboard players set $P_MotionPower reizo_mcfunc_Engin.Temp 3

# この位置に召喚
execute \
as @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] at @s \
positioned ~ ~0.5 ~ \
positioned ^ ^ ^-1 run \
function reizo_mcfunc_engin:lib/wind_p_motion/summon_as/summon

# Tagはもういらない。
tag @a[tag=reizo_mcfunc_Engin.Wind_P_Motion.This] remove reizo_mcfunc_Engin.Wind_P_Motion.This