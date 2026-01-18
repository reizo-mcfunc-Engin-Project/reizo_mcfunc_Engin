#> reizo_mcfunc_engin:api/mob/summon.m
#
# MobのAssetSummon処理を呼び出す。
#
# @MacroInput
#   namespace = データパックの名前空間、動的に名前空間を変えることによって違う名前空間でもこのデータパックのシステムを利用できる。
#   ID        = Mob,ObjectのID、動的にIDを使えることにより、Tagで管理するような長い記述を減らすことが出来ている。
# @api

# 退避
function reizo_mcfunc_engin:asset/.manager/common/context/data/stash

# ID設定
$data modify storage reizo_mcfunc_engin:mob ID set value "$(ID)"

# namespace設定
$data modify storage reizo_mcfunc_engin:mob namespace set value "$(namespace)"

# Asset実行
function reizo_mcfunc_engin:asset/mob/.manager/summon/_

# 解放
function reizo_mcfunc_engin:asset/.manager/common/context/data/pop