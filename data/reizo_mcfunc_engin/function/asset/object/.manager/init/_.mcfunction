#> reizo_mcfunc_engin:asset/object/.manager/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/summon

# タグ剥奪
tag @s remove reizo_mcfunc_Engin.Object.Init

# 継承した際にはcontext内にRegisterが存在しているので引き出す。
function reizo_mcfunc_engin:asset/mob/.manager/context/register/pull

# ID,namespaceをArgsに
data modify entity @s data.Args set from storage reizo_mcfunc_engin:context Args

# 登録したデータを適応
function reizo_mcfunc_engin:asset/object/.empty/register

# データ取得
function reizo_mcfunc_engin:asset/.manager/common/context/data/push

# データを送る
function reizo_mcfunc_engin:asset/.manager/common/context/data/push

# IDと名前空間から指定したObjectのInit処理呼び出し
function reizo_mcfunc_engin:asset/object/.manager/init/run.m with storage reizo_mcfunc_engin:context Args

# 子クラスのtickファイルが存在しない場合、親クラスのtickファイルを呼び出す。
    execute if data storage reizo_mcfunc_engin:context data.Registry.Extends unless data storage reizo_mcfunc_engin:object {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"object",Method:"init/_"}
    data remove storage reizo_mcfunc_engin:object Implement

# thisをdataに移動
data modify entity @s data.this set from storage reizo_mcfunc_engin:context this

# お掃除
data remove storage reizo_mcfunc_engin:context data