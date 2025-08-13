#> reizo_mcfunc_engin:asset/item/.example/tick/left_click/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.example/tick/_

# 右クリック！
tellraw @s "左クリック来て泣く(?)"
playsound ui.button.click player @s ~ ~ ~ 1 2 1

# 前にぶっ飛ぶ
scoreboard players set $MotionPower reizo_mcfunc_Engin.Temp 200
function reizo_mcfunc_engin:lib/motion/pounce_on