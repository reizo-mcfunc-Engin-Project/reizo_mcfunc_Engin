#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/feet/run
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/feet/foreach

# データを取得
data modify storage reizo_mcfunc_engin:item _.ID set from storage reizo_mcfunc_engin:item data.Equipment.feet.components."minecraft:custom_data".Item.ID
data modify storage reizo_mcfunc_engin:item _.namespace set from storage reizo_mcfunc_engin:item data.Equipment.feet.components."minecraft:custom_data".Item.namespace
data modify storage reizo_mcfunc_engin:item _.Registry set from storage reizo_mcfunc_engin:item data.Equipment.feet.components."minecraft:custom_data".Item.Registry

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_