#> reizo_mcfunc_engin:api/extends/core/foreach/run_func/tick.m
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/foreach.m

# Fianl1bの奴は継承が禁止されてんだ。
execute \
if predicate {condition:"entity_properties",entity:"this",predicate:{nbt:"{data:{Registry:{SuperClass_Final:1b}}}"}} run \
return run function reizo_erros:call.super_method/final

# SuperClass呼び出し
$function $(namespace):asset/$(Type)/.manager/tick/run.m with storage reizo_mcfunc_engin:api Extends.foreach