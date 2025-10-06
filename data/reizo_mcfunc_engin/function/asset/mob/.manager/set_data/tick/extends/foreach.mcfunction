#> reizo_mcfunc_engin:asset/mob/.manager/set_data/tick/extends/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/set_data/tick/extends/_

# 継承情報を実行情報へとコピー
    data modify storage reizo_mcfunc_engin:mob Extends.ID set from storage reizo_mcfunc_engin:mob CopyExtends[0].ID
    data modify storage reizo_mcfunc_engin:mob Extends.namespace set from storage reizo_mcfunc_engin:mob CopyExtends[0].namespace

# Fianl1bの奴は継承が禁止されてんだ。
execute \
if predicate {condition:"entity_properties",entity:"this",predicate:{nbt:"{data:{Registry:{SuperClass_Final:1b}}}"}} run \
return run function reizo_erros:call.super_method/final

# SuperClass呼び出し
function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m with storage reizo_mcfunc_engin:mob Extends

# 先頭削除
data remove storage reizo_mcfunc_engin:mob CopyExtends[0]

# 要素が残るなら再帰
execute \
if data storage reizo_mcfunc_engin:mob CopyExtends[0] run \
function reizo_mcfunc_engin:asset/mob/.manager/set_data/tick/extends/foreach