#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/tick/detection_id.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/tick/_

$execute \
unless entity @e[tag=reizo_mcfunc_Engin.Object.AddHotBar_ChestMinecart,type=chest_minecart,scores={reizo_mcfunc_Engin.ScoreID=$(ScoreID)}] run \
function reizo_mcfunc_engin:asset/object/.manager/summon/run.m {ID:"tools.add_hotbar_chest_minecart",namespace:"reizo_mcfunc_engin"}