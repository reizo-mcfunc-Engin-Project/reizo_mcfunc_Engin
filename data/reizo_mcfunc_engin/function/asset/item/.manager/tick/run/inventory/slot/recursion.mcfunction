#> reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/recursion
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/foreach

# お掃除
data remove storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item.Registry.Slot[0]
scoreboard players reset $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp

# NotHold
execute \
if data storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item.Registry{NotHold:1b} \
unless data storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item.Registry.Slot[1] run \
return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/not_hold

# 先頭が残るなら再帰
execute \
if data storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item.Registry.Slot[0] run \
function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/foreach