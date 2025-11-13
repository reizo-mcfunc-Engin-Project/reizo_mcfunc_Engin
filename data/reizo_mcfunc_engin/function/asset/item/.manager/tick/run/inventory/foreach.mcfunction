#> reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/_

# 先頭データ取得
data modify storage reizo_mcfunc_engin:item Inventory.Top set from storage reizo_mcfunc_engin:item Inventory.foreach[0]

# Slot
function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/foreach

# お掃除
data remove storage reizo_mcfunc_engin:item Inventory.foreach[0]
data remove storage reizo_mcfunc_engin:item Inventory.Top

# 先頭が残るなら再帰
execute \
if data storage reizo_mcfunc_engin:item Inventory.foreach[0] run \
function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/foreach