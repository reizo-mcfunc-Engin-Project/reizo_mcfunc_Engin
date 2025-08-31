#> reizo_mcfunc_engin:asset/item/.example/tick/left_click/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.example/tick/_

# 右クリック！
tellraw @s "左クリック来て泣く(?)"
playsound ui.button.click player @s ~ ~ ~ 1 2 1

# 前にぶっ飛ぶ
data modify storage reizo_mcfunc_engin:lib Wind_P_Motion.Strength set value 3
function reizo_mcfunc_engin:lib/wind_p_motion/looking