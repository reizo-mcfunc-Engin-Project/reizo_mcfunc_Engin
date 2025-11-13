#> reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/_

# Inventory取得
data modify storage reizo_mcfunc_engin:item Inventory.foreach set from storage reizo_mcfunc_engin:item data.Inventory

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/foreach