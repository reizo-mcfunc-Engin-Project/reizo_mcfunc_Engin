#> reizo_mcfunc_engin:api/object/summon.m
#
# ObjectのAssetSummon処理を呼び出す。
#
# @MacroInput
#   namespace = データパックの名前空間、動的に名前空間を変えることによって違う名前空間でもこのデータパックのシステムを利用できる。
#   ID        = Mob,ObjectのID、動的にIDを使えることにより、Tagで管理するような長い記述を減らすことが出来ている。
# @api

# ID設定
$data modify storage reizo_mcfunc_engin:object ID set value "$(ID)"

# namespace設定
$data modify storage reizo_mcfunc_engin:object namespace set value "$(namespace)"

# Asset処理を叩く
function reizo_mcfunc_engin:asset/object/.manager/summon/_