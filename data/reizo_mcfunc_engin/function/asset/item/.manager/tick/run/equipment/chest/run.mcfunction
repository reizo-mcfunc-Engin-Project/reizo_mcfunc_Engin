#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/run
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/foreach

# IDとnamespaceを取得
data modify storage reizo_mcfunc_engin:item _.ID set from storage reizo_mcfunc_engin:item data.Equipment.chest.components."minecraft:custom_data".Item.ID
data modify storage reizo_mcfunc_engin:item _.namespace set from storage reizo_mcfunc_engin:item data.Equipment.chest.components."minecraft:custom_data".Item.namespace

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run.m with storage reizo_mcfunc_engin:item _

# お掃除
data remove storage reizo_mcfunc_engin:item _
data remove storage reizo_mcfunc_engin:item data.Equipment.chest.components."minecraft:custom_data".Item.Registry.Slot