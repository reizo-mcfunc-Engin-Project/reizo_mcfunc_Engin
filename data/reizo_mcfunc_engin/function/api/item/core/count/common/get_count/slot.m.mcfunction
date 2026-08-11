#> reizo_mcfunc_engin:api/item/core/count/common/get_count/slot.m
#
# 
#
# @within function reizo_mcfunc_engin:api/item/core/count/common/get_count/_

$data modify storage reizo_mcfunc_engin:api Args.Item.Count.Value set from entity @s Inventory[{Slot:$(Slot)b}].count