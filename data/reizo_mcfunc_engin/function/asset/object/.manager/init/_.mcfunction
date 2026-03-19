#> reizo_mcfunc_engin:asset/object/.manager/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/summon

# IDと名前空間から指定したObjectのInit処理呼び出し
function reizo_mcfunc_engin:asset/object/.manager/init/run.m with storage reizo_mcfunc_engin:context Args

#> ID,namespaceをdataに
    # IDをコピー
    data modify entity @s data.Args.ID set from storage reizo_mcfunc_engin:context Args.ID
    # namespaceコピー
    data modify entity @s data.Args.namespace set from storage reizo_mcfunc_engin:context Args.namespace

# 登録したデータを適応
function reizo_mcfunc_engin:asset/object/.manager/set_data/init/_

# データを送る
function reizo_mcfunc_engin:asset/.manager/common/context/data/push

# 子クラスのtickファイルが存在しない場合、親クラスのtickファイルを呼び出す。
    execute if data storage reizo_mcfunc_engin:context data.Registry.Extends unless data storage reizo_mcfunc_engin:object {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"object",Method:"init/_"}
    data remove storage reizo_mcfunc_engin:object Implement

# thisをdataに移動
data modify entity @s data.this set from storage reizo_mcfunc_engin:context this

# お掃除
tag @s remove reizo_mcfunc_Engin.Object.Init
data remove storage reizo_mcfunc_engin:context data