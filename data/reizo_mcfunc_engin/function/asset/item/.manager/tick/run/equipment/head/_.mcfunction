#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/head/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/_

#> 実行チェック
    # not_hold
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.head.components."minecraft:custom_data".Item.Registry{NotHold:1b} \
    unless data storage reizo_mcfunc_engin:item data.Equipment.head.components."minecraft:custom_data".Item.Registry.Slot[{Value:-3}] run \
    return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/head/run/not_hold
    # head
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.head.components."minecraft:custom_data".Item.Registry.Slot[{Value:-3}] run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/head/run/_