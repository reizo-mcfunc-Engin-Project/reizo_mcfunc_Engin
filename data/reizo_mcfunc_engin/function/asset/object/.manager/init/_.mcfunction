#> reizo_mcfunc_engin:asset/object/.manager/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/summon

# IDと名前空間から指定したObjectのInit処理呼び出し
function reizo_mcfunc_engin:asset/object/.manager/init/run.m with storage reizo_mcfunc_engin:object

# 継承した際にはcontext内にRegisterが存在しているので引き出す。
function reizo_mcfunc_engin:asset/object/.manager/context/register/pull

#> ID,namespaceをdataに
    # IDをコピー
    data modify entity @s data.ID set from storage reizo_mcfunc_engin:object ID
    # namespaceコピー
    data modify entity @s data.namespace set from storage reizo_mcfunc_engin:object namespace

# 登録したデータを適応
function reizo_mcfunc_engin:asset/object/.manager/set_data/init/_

# データ取得
data modify storage reizo_mcfunc_engin:context data set from entity @s data

# 子クラスのtickファイルが存在しない場合、親クラスのtickファイルを呼び出す。
    execute if data storage reizo_mcfunc_engin:context data.Registry.Extends unless data storage reizo_mcfunc_engin:object {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"object",Method:"init/_"}
    data remove storage reizo_mcfunc_engin:object Implement

# お掃除
tag @s remove reizo_mcfunc_Engin.Object.Init
data remove storage reizo_mcfunc_engin:context data