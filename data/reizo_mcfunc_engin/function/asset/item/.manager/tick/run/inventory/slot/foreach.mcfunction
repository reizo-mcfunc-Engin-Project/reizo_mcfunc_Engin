#> reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/foreach

# 起動Slot,Slot取得
    execute store result score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp run data get storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item.Registry.Slot[0]
    execute store result score $Item.foreach.Slot reizo_mcfunc_Engin.Temp run data get storage reizo_mcfunc_engin:item Inventory.Top.Slot

# 起動スロットが-6..-2の間なら再帰
execute \
if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -6..-2 run \
return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/recursion

# 起動スロットが-1であり、SelectedItemのデータがあればSelectedItemの物を参照とする。
execute \
if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -1 \
if data storage reizo_mcfunc_engin:item data.SelectedItem run \
return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/selected_item

# 起動SlotとSlotが同じなら実行。
execute \
if score $Item.foreach.Slot reizo_mcfunc_Engin.Temp = $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp run \
return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/_

# NotHoldが有効ならアイテムが起動Slotになくても実行させる。
execute \
if data storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item.Registry.NotHold{_:1b} \
if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -1 \
unless score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp = $Item.foreach.Slot reizo_mcfunc_Engin.Temp run \
return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/not_hold

# 再帰
function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/recursion