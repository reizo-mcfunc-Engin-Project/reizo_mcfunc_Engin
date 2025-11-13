#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/recursion
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/foreach

# お掃除
data remove storage reizo_mcfunc_engin:item data.Equipment.chest.components."minecraft:custom_data".Item.Registry.Slot[0]
scoreboard players reset $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp

# 先頭が残るなら再帰
execute \
if data storage reizo_mcfunc_engin:item data.Equipment.chest.components."minecraft:custom_data".Item.Registry.Slot[0] run \
function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/foreach