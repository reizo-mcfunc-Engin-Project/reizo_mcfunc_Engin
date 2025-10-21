#> reizo_mcfunc_engin:api/extends/core/foreach/run_func/tick.m
#
# 継承元のTick処理を呼び出す。
#
# @within function reizo_mcfunc_engin:api/extends/foreach.m

# Fianl1bの奴は継承が禁止されてんだ。
execute \
if predicate {condition:"value_check",value:{type:"storage",storage:"reizo_mcfunc_engin:api",path:"Args.Extends.foreach.SuperClass_Final"},range:1b} run \
return run function reizo_erros:call.super_method/final

# SuperClass呼び出し
$function $(namespace):asset/$(Type)/.manager/tick/run.m with storage reizo_mcfunc_engin:api Extends.foreach