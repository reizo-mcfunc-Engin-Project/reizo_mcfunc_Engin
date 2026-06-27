#> reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/check.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/foreach

# スコアにも入れておく
execute store result score $Item.foreach.Slot reizo_mcfunc_Engin.Temp run data get storage reizo_mcfunc_engin:item Inventory.Top.Slot

#> 実行チェック
    # メインハンド
    $execute \
    if data storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item.Registry.Slot[{Value:-1}] \
    if data storage reizo_mcfunc_engin:item data.SelectedItem \
    if data storage reizo_mcfunc_engin:item data{SelectedItemSlot:$(Slot)} run \
    return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/selected_item
    # not_hold
    $execute \
    if data storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item.Registry{NotHold:1b} \
    unless data storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item.Registry.Slot[{Value:$(Slot)b}] run \
    return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/not_hold
    # インベントリ
    $execute \
    if data storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item.Registry.Slot[{Value:$(Slot)b}] run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/_