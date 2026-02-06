#> reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/not_hold
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/foreach

# データ取得
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item Inventory.Top.components."minecraft:custom_data".Item

# 共通処理の呼び出し。
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/not_hold