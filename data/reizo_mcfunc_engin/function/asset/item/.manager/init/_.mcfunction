#> reizo_mcfunc_engin:asset/item/.manager/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/give/give

# Registerの退避
function reizo_mcfunc_engin:asset/.manager/common/context/register/stash

# Init処理呼び出し
function reizo_mcfunc_engin:asset/item/.manager/init/run.m with storage reizo_mcfunc_engin:item

# Registerを戻す
function reizo_mcfunc_engin:asset/.manager/common/context/register/pop
data modify storage reizo_mcfunc_engin:item Register set from storage reizo_mcfunc_engin:context Register

# IDとnamespaceをCustomDataへ。
    data modify entity @s Item.components."minecraft:custom_data".Item.ID set from storage reizo_mcfunc_engin:item ID
    data modify entity @s Item.components."minecraft:custom_data".Item.namespace set from storage reizo_mcfunc_engin:item namespace

# データセット
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/_

# お掃除
tag @s remove reizo_mcfunc_Engin.Item.Init
data remove storage reizo_mcfunc_engin:context Register