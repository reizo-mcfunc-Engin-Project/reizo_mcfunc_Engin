#> reizo_mcfunc_engin:asset/item/.example/tick/right_click/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.example/tick/_

# 右クリック！
tellraw @s "左クリックが来たぁ！"
playsound ui.button.click player @s ~ ~ ~ 1 1 1

# 後ろ
scoreboard players set $MotionPower reizo_mcfunc_Engin.Temp -200
function reizo_mcfunc_engin:lib/motion/pounce_on