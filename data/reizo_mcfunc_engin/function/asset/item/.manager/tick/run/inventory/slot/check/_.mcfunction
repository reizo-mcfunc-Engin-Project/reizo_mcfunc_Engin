#> reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/check/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/foreach

#> データの有無で動作を別ける
    # メインハンドの時は動作を変える
    execute \
    if data storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item.Registry.Slot[{Value:-1}] \
    if data storage reizo_mcfunc_engin:item data.SelectedItem run \
    return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/check/selected_item.m with storage reizo_mcfunc_engin:item Inventory.Top
    # インベントリ系
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/check/_.m with storage reizo_mcfunc_engin:item Inventory.Top