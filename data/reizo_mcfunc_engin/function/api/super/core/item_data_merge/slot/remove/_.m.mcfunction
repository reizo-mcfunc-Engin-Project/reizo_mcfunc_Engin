#> reizo_mcfunc_engin:api/super/core/item_data_merge/slot/remove/_.m
#
# 
#
# @within function reizo_mcfunc_engin:api/super/core/item_data_merge/slot/remove/_

$execute unless data entity @s Inventory[{Slot:$(Slot)b}].components."minecraft:custom_data".Item.this run data remove storage reizo_mcfunc_engin:context this