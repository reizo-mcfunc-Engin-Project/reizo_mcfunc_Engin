#> reizo_mcfunc_engin:asset/item/.example/tick/right_click/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.example/tick/_

# 右クリック！
tellraw @s "左クリックが来たぁ！"
playsound ui.button.click player @s ~ ~ ~ 1 1 1

# 後ろ
data modify storage reizo_mcfunc_engin:lib Wind_P_Motion.Strength set value -3
function reizo_mcfunc_engin:lib/wind_p_motion/looking