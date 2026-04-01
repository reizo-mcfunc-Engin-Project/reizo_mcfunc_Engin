#> reizo_mcfunc_engin:asset/item/.manager/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/give/give

# Init処理呼び出し
function reizo_mcfunc_engin:asset/item/.manager/init/run.m with storage reizo_mcfunc_engin:context Args

# 継承した際にはcontext内にRegisterが存在しているので引き出す。
function reizo_mcfunc_engin:asset/item/.manager/context/register/pull

# IDとnamespaceをCustomDataへ。
    data modify entity @s Item.components."minecraft:custom_data".Item.Args.ID set from storage reizo_mcfunc_engin:context Args.ID
    data modify entity @s Item.components."minecraft:custom_data".Item.Args.namespace set from storage reizo_mcfunc_engin:context Args.namespace

# データセット
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/_

# データ取得
    # data取得
    data modify storage reizo_mcfunc_engin:context data set from entity @s Item.components."minecraft:custom_data".Item
    # dataから不要なデータの削除
        data remove storage reizo_mcfunc_engin:context data.Args
        data remove storage reizo_mcfunc_engin:context data.this

# もし自分のファイルが無かったら継承元のファイルを呼び出す。
    execute if data storage reizo_mcfunc_engin:context data.Registry.Extends unless data storage reizo_mcfunc_engin:item {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"init/_"}
    data remove storage reizo_mcfunc_engin:item Implement

# thisをCustomDataへ
    # もしcontextにthisが無かったら空のオブジェクトにして渡す
    execute unless data storage reizo_mcfunc_engin:context this run data modify storage reizo_mcfunc_engin:context this set value {}
    # データコピー
    data modify entity @s Item.components."minecraft:custom_data".Item.this set from storage reizo_mcfunc_engin:context this

# お掃除
tag @s remove reizo_mcfunc_Engin.Item.Init
data remove storage reizo_mcfunc_engin:context data