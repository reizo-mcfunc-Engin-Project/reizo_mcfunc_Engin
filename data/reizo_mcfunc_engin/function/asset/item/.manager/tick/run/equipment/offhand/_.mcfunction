#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/_

#> 実行チェック
    # not_hold
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.offhand.components."minecraft:custom_data".Item.Registry{NotHold:1b} \
    unless data storage reizo_mcfunc_engin:item data.Equipment.offhand.components."minecraft:custom_data".Item.Registry.Slot[{Value:-2}] run \
    return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/run/not_hold
    # offhand
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.offhand.components."minecraft:custom_data".Item.Registry.Slot[{Value:-2}] run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/run/_