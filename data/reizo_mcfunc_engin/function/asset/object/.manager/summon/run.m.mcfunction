#> reizo_mcfunc_engin:asset/object/.manager/summon/run.m
#
# IDとnamespaceを設定してもらう。
#
# @MacroInput
#   namespace = データパックの名前空間、動的に名前空間を変えることによって違う名前空間でもこのデータパックのシステムを利用できる。
#   ID        = Mob,ObjectのID、動的にIDを使えることにより、Tagで管理するような長い記述を減らすことが出来ている。
# @public

# ID設定
$data modify storage reizo_mcfunc_engin:object ID set value "$(ID)"

# namespace設定
$data modify storage reizo_mcfunc_engin:object namespace set value "$(namespace)"

# summon
function reizo_mcfunc_engin:asset/object/.manager/summon/summon