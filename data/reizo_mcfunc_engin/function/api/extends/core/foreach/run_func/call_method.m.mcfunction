#> reizo_mcfunc_engin:api/extends/core/foreach/run_func/call_method.m
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/foreach.m

# TypeとMethodを取得
    data modify storage reizo_mcfunc_engin:api Extends.foreach.Type set from storage reizo_mcfunc_engin:api Args.CallMethod.Type
    data modify storage reizo_mcfunc_engin:api Extends.foreach.Method set from storage reizo_mcfunc_engin:api Args.CallMethod.Method

# 継承元の動作実行
function reizo_mcfunc_engin:api/call_method/core/run.m with storage reizo_mcfunc_engin:api Extends.foreach