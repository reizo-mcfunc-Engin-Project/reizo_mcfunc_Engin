#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/_

#> 実行チェック
    # not_hold
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.chest.components."minecraft:custom_data".Item.Registry{NotHold:1b} \
    unless data storage reizo_mcfunc_engin:item data.Equipment.chest.components."minecraft:custom_data".Item.Registry.Slot[{Value:-4}] run \
    return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/run/not_hold
    # chest
    execute \
    unless data storage reizo_mcfunc_engin:item data.Equipment.chest.components."minecraft:custom_data".Item.Registry{IsTicking:0b} run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/run/_