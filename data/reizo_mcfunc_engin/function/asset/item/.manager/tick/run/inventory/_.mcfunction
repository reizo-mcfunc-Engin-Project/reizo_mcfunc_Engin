#> reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/_

# Oldのデータが現在のデータと一致したら再度同じクラスの関数を実行しに行く。
    execute store result storage reizo_mcfunc_engin:item IsRerun byte 1 run data modify storage reizo_mcfunc_engin:item Old.data.Inventory set from storage reizo_mcfunc_engin:item data.Inventory
    execute if data storage reizo_mcfunc_engin:item {IsRerun:0b} run return run function reizo_mcfunc_engin:asset/item/.manager/tick/rerun/inventory

# お掃除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Old.Success.Inventory
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Old.Success.NotHold

# Inventory取得
data modify storage reizo_mcfunc_engin:item Inventory.foreach set from storage reizo_mcfunc_engin:item data.Inventory

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/foreach