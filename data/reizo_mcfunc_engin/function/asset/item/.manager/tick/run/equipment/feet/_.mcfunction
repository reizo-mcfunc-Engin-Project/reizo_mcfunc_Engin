#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/feet/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/_

#> 実行チェック
    # not_hold
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.feet.components."minecraft:custom_data".Item.Registry{NotHold:1b} \
    unless data storage reizo_mcfunc_engin:item data.Equipment.feet.components."minecraft:custom_data".Item.Registry.Slot[{Value:-6}] run \
    return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/feet/run/not_hold
    # feet
    execute \
    unless data storage reizo_mcfunc_engin:item data.Equipment.feet.components."minecraft:custom_data".Item.Registry{IsTicking:0b} run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/feet/run/_