#> reizo_mcfunc_engin:asset/item/.example/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# 検知用のObject召喚
execute \
anchored eyes \
positioned ^ ^ ^ run \
function reizo_mcfunc_engin:api/object/summon.m {ID:"0001.click_detection",namespace:"reizo_mcfunc_engin"}

# スコアと結びつけ
execute \
if entity @n[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.ClickDetection,type=interaction] \
unless score @s reizo_mcfunc_Engin.ScoreID matches -2147483648..2147483647 run \
scoreboard players operation @n[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.ClickDetection,type=interaction] reizo_mcfunc_Engin.ScoreID = @s reizo_mcfunc_Engin.ScoreID

# 右クリック！
execute \
if entity @s[tag=reizo_mcfunc_Engin.Click.Right] run \
function reizo_mcfunc_engin:asset/item/.example/tick/right_click/_

# 左クリック！
execute \
if entity @s[tag=reizo_mcfunc_Engin.Click.Left] run \
function reizo_mcfunc_engin:asset/item/.example/tick/left_click/_