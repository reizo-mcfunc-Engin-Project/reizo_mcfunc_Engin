#> reizo_mcfunc_engin:asset/item/.manager/tick/rerun/inventory
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/_

# Slotの値によって動作を変える
    # 値取得
    execute store result score $Item.Slot reizo_mcfunc_Engin.Temp run data get storage reizo_mcfunc_engin:item Old.Success.Inventory.Tick[0].Slot
    # SelectedItemに移行
    # execute if score $Item.Slot reizo_mcfunc_Engin.Temp matches -1 if data storage reizo_mcfunc_engin:item data.SelectedItem run return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/rerun/selected_item
    # Inventoryのものでなければスキップ
    execute unless score $Item.Slot reizo_mcfunc_Engin.Temp matches 0..35 run return run function reizo_mcfunc_engin:asset/item/.manager/tick/rerun/fail/inventory

# 先頭取得
data modify storage reizo_mcfunc_engin:item Rerun.Entry set from storage reizo_mcfunc_engin:item Old.Success.Inventory.Tick[0]

# 共通処理
function reizo_mcfunc_engin:asset/item/.manager/tick/rerun/_common

# 要素の削除
data remove storage reizo_mcfunc_engin:item Old.Success.Inventory.Tick[0]

# 要素が残るなら再帰
execute if data storage reizo_mcfunc_engin:item Old.Success.Inventory.Tick[0] run return run function reizo_mcfunc_engin:asset/item/.manager/tick/rerun/inventory

# NotHoldもあるなら実行
execute if data storage reizo_mcfunc_engin:item Old.Success.Inventory.NotHold[0] run function reizo_mcfunc_engin:asset/item/.manager/not_hold/rerun/inventory