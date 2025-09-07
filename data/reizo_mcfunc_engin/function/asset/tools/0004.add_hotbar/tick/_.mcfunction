#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/.manager/tick/run.m/_

# アイテム格納用Object召喚
execute \
positioned ~ ~1000 ~ \
unless entity @e[tag=reizo_mcfunc_Engin.Object.AddHotBar_ChestMinecart,type=chest_minecart] run \
function reizo_mcfunc_engin:asset/object/.manager/summon/run.m {ID:"tools.add_hotbar_chest_minecart",namespace:"reizo_mcfunc_engin"}

execute \
positioned ~ ~1000 ~ run \
tp @n[tag=reizo_mcfunc_Engin.Object.AddHotBar_ChestMinecart,type=chest_minecart] ~ ~ ~