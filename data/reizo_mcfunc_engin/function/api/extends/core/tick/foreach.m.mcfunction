#> reizo_mcfunc_engin:api/extends/core/tick/foreach.m
#
# 
#
# @within function
# reizo_mcfunc_engin:api/extends/tick
# reizo_mcfunc_engin:api/extends/core/tick/foreach.m

# 継承情報を実行情報へとコピー
    data modify storage reizo_mcfunc_engin:api Extends.tick.Args.ID set from storage reizo_mcfunc_engin:api Extends.tick.CopyExtends[0].ID
    data modify storage reizo_mcfunc_engin:api Extends.tick.Args.namespace set from storage reizo_mcfunc_engin:api Extends.tick.CopyExtends[0].namespace

# Fianl1bの奴は継承が禁止されてんだ。
execute \
if predicate {condition:"entity_properties",entity:"this",predicate:{nbt:"{data:{Registry:{SuperClass_Final:1b}}}"}} run \
return run function reizo_erros:call.super_method/final

# SuperClass呼び出し
$function $(namespace):asset/$(Type)/.manager/tick/run.m with storage reizo_mcfunc_engin:api Extends.tick.Args

# 先頭削除
data remove storage reizo_mcfunc_engin:api Extends.tick.CopyExtends[0]

# 再帰
$execute \
if data storage reizo_mcfunc_engin:api Extends.tick.CopyExtends[0] run \
function reizo_mcfunc_engin:api/extends/core/tick/foreach.m {Type:"$(Type)",namespace:"$(namespace)"}