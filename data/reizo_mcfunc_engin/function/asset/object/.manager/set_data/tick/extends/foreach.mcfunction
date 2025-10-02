#> reizo_mcfunc_engin:asset/object/.manager/set_data/tick/extends/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/set_data/tick/extends/_

# 実行用にnamespaceをコピー
data modify storage reizo_mcfunc_engin:object Extends.namespace set from entity @s data.Object.namespace

# IDをコピー
data modify storage reizo_mcfunc_engin:object Extends.ID set from storage reizo_mcfunc_engin:object CopyExtends[0]

# Fianl1bの奴は継承が禁止されてんだ。
execute \
if predicate {condition:"entity_properties",entity:"this",predicate:{nbt:"{data:{Registry:{SuperClass_Final:1b}}}"}} run \
return run function reizo_erros:call.super_method/final

# SuperClass呼び出し
function reizo_mcfunc_engin:asset/object/.manager/tick/run.m with storage reizo_mcfunc_engin:object Extends

# 先頭削除
data remove storage reizo_mcfunc_engin:object CopyExtends[0]

# 要素が残るなら再帰
execute \
if data storage reizo_mcfunc_engin:object CopyExtends[0] run \
function reizo_mcfunc_engin:asset/object/.manager/set_data/tick/extends/foreach