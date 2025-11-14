#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/run
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/foreach

# IDとnamespaceを取得
data modify storage reizo_mcfunc_engin:item _.ID set from storage reizo_mcfunc_engin:item data.Equipment.offhand.components."minecraft:custom_data".Item.ID
data modify storage reizo_mcfunc_engin:item _.namespace set from storage reizo_mcfunc_engin:item data.Equipment.offhand.components."minecraft:custom_data".Item.namespace

# 継承情報があるなら継承元の動作を呼び出す。
execute \
if data storage reizo_mcfunc_engin:item data.Equipment.offhand.components."minecraft:custom_data".Item.Registry.Extends run \
function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/extends

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run.m with storage reizo_mcfunc_engin:item _

# お掃除
data remove storage reizo_mcfunc_engin:item _