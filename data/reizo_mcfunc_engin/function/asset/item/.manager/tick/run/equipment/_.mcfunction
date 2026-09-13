#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/_

# Oldのデータが現在のデータと一致したら再度同じクラスの関数を実行しに行く。
    execute store result storage reizo_mcfunc_engin:item IsRerun byte 1 run data modify storage reizo_mcfunc_engin:item Old.data.Equipment set from storage reizo_mcfunc_engin:item data.Equipment
    execute if data storage reizo_mcfunc_engin:item {IsRerun:0b} if data storage reizo_mcfunc_engin:item Old.Success.Equipment.Tick[0] run return run function reizo_mcfunc_engin:asset/item/.manager/tick/rerun/equipment

# お掃除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Old.Success.Equipment
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Old.Success.NotHold

#> Equipment
    # offhand
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.offhand run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/_
    # head
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.head run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/head/_
    # chest
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.chest run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/_
    # legs
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.legs run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/legs/_
    # feet
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.feet run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/feet/_