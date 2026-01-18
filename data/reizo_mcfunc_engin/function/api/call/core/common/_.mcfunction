#> reizo_mcfunc_engin:api/call/core/common/_
#
# 
#
# @within function reizo_mcfunc_engin:api/call/*

# データ取得
    function reizo_mcfunc_engin:api/call/core/common/data/push with storage reizo_mcfunc_engin:api Args.Call
    data modify storage reizo_mcfunc_engin:api Args.Call.ID set from storage reizo_mcfunc_engin:context ID
    data modify storage reizo_mcfunc_engin:api Args.Call.namespace set from storage reizo_mcfunc_engin:context namespace

# メソッド起動
function reizo_mcfunc_engin:api/call/core/run.m with storage reizo_mcfunc_engin:api Args.Call

# お掃除やら
    function reizo_mcfunc_engin:api/call/core/common/data/pull with storage reizo_mcfunc_engin:api Args.Call
    data remove storage reizo_mcfunc_engin:api Args.Call