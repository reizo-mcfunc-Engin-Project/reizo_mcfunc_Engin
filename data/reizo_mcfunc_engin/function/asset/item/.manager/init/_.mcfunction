#> reizo_mcfunc_engin:asset/item/.manager/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/give/give

# Init処理呼び出し
function reizo_mcfunc_engin:asset/item/.manager/init/run.m with storage reizo_mcfunc_engin:item

# 継承した際にはcontext内にRegisterが存在しているので引き出す。
function reizo_mcfunc_engin:asset/item/.manager/context/register/pull

# IDとnamespaceをCustomDataへ。
    data modify entity @s Item.components."minecraft:custom_data".Item.ID set from storage reizo_mcfunc_engin:item ID
    data modify entity @s Item.components."minecraft:custom_data".Item.namespace set from storage reizo_mcfunc_engin:item namespace

# データセット
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/_

# データ取得
data modify storage reizo_mcfunc_engin:context data set from entity @s Item.components."minecraft:custom_data".Item

# もし自分のファイルが無かったら継承元のファイルを呼び出す。
    execute if data storage reizo_mcfunc_engin:context data.Registry.Extends unless data storage reizo_mcfunc_engin:item {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"init/_"}
    data remove storage reizo_mcfunc_engin:item Implement

# お掃除
tag @s remove reizo_mcfunc_Engin.Item.Init
data remove storage reizo_mcfunc_engin:context data