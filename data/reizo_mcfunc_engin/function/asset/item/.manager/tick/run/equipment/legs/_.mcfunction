#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/legs/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/_

#> 実行チェック
    # not_hold
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.legs.components."minecraft:custom_data".Item.Registry{NotHold:1b} \
    unless data storage reizo_mcfunc_engin:item data.Equipment.legs.components."minecraft:custom_data".Item.Registry.Slot[{Value:-5}] run \
    return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/legs/run/not_hold
    # legs
    execute \
    unless data storage reizo_mcfunc_engin:item data.Equipment.legs.components."minecraft:custom_data".Item.Registry{IsTicking:0b} \
    if data storage reizo_mcfunc_engin:item data.Equipment.legs.components."minecraft:custom_data".Item.Registry.Slot[{Value:-5}] run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/legs/run/_