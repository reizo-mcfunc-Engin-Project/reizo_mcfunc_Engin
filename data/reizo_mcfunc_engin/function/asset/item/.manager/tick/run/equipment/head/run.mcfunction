#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/head/run
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/head/foreach

# データを取得
data modify storage reizo_mcfunc_engin:item _.ID set from storage reizo_mcfunc_engin:item data.Equipment.head.components."minecraft:custom_data".Item.ID
data modify storage reizo_mcfunc_engin:item _.namespace set from storage reizo_mcfunc_engin:item data.Equipment.head.components."minecraft:custom_data".Item.namespace
data modify storage reizo_mcfunc_engin:item _.namespace set from storage reizo_mcfunc_engin:item data.Equipment.head.components."minecraft:custom_data".Item.Registry

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_