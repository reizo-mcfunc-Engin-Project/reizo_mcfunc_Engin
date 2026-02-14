#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/legs/recursion
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/legs/foreach

# お掃除
data remove storage reizo_mcfunc_engin:item data.Equipment.legs.components."minecraft:custom_data".Item.Registry.Slot[0]

# NotHold関係
execute \
if data storage reizo_mcfunc_engin:item data.Equipment.legs.components."minecraft:custom_data".Item.Registry{NotHold:1b} \
unless data storage reizo_mcfunc_engin:item data.Equipment.legs.components."minecraft:custom_data".Item.Registry.Slot[0] run \
return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/legs/run/not_hold

# お掃除
scoreboard players reset $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp

# 先頭が残るなら再帰
execute \
if data storage reizo_mcfunc_engin:item data.Equipment.legs.components."minecraft:custom_data".Item.Registry.Slot[0] run \
function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/legs/foreach