#> reizo_mcfunc_engin:api/trigger/core/run/check/item/get_data/get/_
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/check/item/get_data/foreach

# Get
    execute if data storage reizo_mcfunc_engin:api Trigger.run.Item.GetData{Entry:"mainhand"} run return run data modify storage reizo_mcfunc_engin:api Trigger.run.Item.GetData.dataStack append from entity @s SelectedItem.components."minecraft:custom_data".Item
    function reizo_mcfunc_engin:api/trigger/core/run/check/item/get_data/get/equipment.m with storage reizo_mcfunc_engin:api Trigger.run.Item.GetData
    function reizo_mcfunc_engin:api/trigger/core/run/check/item/get_data/get/slot.m with storage reizo_mcfunc_engin:api Trigger.run.Item.GetData