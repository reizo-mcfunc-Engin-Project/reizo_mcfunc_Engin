#> reizo_mcfunc_engin:api/trigger/core/run/slot_check/get_data/get/_
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/slot_check/get_data/foreach

# Slot
execute if data storage reizo_mcfunc_engin:api Trigger.run.Item.GetData{Entry:"mainhand"} run return run data modify storage reizo_mcfunc_engin:api Trigger.run.Item.GetData.ArgsStack append from entity @s SelectedItem.components."minecraft:custom_data".Item.Args
function reizo_mcfunc_engin:api/trigger/core/run/slot_check/get_data/get/slot.m with storage reizo_mcfunc_engin:api Trigger.run.Item.GetData
function reizo_mcfunc_engin:api/trigger/core/run/slot_check/get_data/get/equipment.m with storage reizo_mcfunc_engin:api Trigger.run.Item.GetData