#> reizo_mcfunc_engin:asset/item/.manager/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/give/give

# Init処理呼び出し
function reizo_mcfunc_engin:asset/item/.manager/init/run.m with storage reizo_mcfunc_engin:item

# IDとnamespaceをCustomDataへ。
    data modify entity @s Item.components."minecraft:custom_data".Item.ID set from storage reizo_mcfunc_engin:item ID
    data modify entity @s Item.components."minecraft:custom_data".Item.namespace set from storage reizo_mcfunc_engin:item namespace

# 継承情報が存在するなら、継承元の処理を呼び出し
execute \
if data storage reizo_mcfunc_engin:item Register.Extends run \
function reizo_mcfunc_engin:asset/item/.manager/init/extends

# データセット
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/_

# Tag剥奪
tag @s remove reizo_mcfunc_Engin.Item.Init