#> reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/foreach

# 起動Slot,Slot取得
    execute store result score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp run data get storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item.Registry.Slot[0]
    execute store result score $Item.foreach.Slot reizo_mcfunc_Engin.Temp run data get storage reizo_mcfunc_engin:item Inventory.Top.Slot

# 起動スロットが-6..-1の間なら再帰
execute \
if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -6..-1 run \
return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/recursion

# 起動SlotとSlotが同じなら実行。
execute \
if score $Item.foreach.Slot reizo_mcfunc_Engin.Temp = $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp run \
function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run

# 再帰
function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/recursion