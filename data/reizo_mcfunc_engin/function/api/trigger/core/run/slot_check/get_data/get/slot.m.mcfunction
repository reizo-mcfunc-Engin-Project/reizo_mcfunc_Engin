#> reizo_mcfunc_engin:api/trigger/core/run/slot_check/get_data/get/slot.m
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/slot_check/get_data/get/_

$data modify storage reizo_mcfunc_engin:api Trigger.run.Item.GetData.ArgsStack append from entity @s Inventory[{Slot:$(Entry)b}].components."minecraft:custom_data".Item.Args