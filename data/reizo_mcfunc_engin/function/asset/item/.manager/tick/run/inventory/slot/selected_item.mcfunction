#> reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/selected_item
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/foreach

# SelectedItemSlotを取得
execute store result score $Item.SelectedItemSlot reizo_mcfunc_Engin.Temp run data get storage reizo_mcfunc_engin:item data.SelectedItemSlot

# 取得した値が現在確認しているSlotと同じならおけ。
execute \
if score $Item.SelectedItemSlot reizo_mcfunc_Engin.Temp = $Item.foreach.Slot reizo_mcfunc_Engin.Temp run \
function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/selected_item

# お掃除
scoreboard players reset $Item.SelectedItemSlot reizo_mcfunc_Engin.Temp