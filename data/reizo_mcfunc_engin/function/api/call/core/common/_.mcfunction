#> reizo_mcfunc_engin:api/call/core/common/_
#
# 
#
# @within function reizo_mcfunc_engin:api/call/*

# データ取得
    data modify storage reizo_mcfunc_engin:api Args.Call.ID set from storage reizo_mcfunc_engin:context origin_data.ID
    data modify storage reizo_mcfunc_engin:api Args.Call.namespace set from storage reizo_mcfunc_engin:context origin_data.namespace

# メソッド起動
function reizo_mcfunc_engin:api/call/core/run.m with storage reizo_mcfunc_engin:api Args.Call

# もしも自分のメソッドが無いのなら、親クラスのメソッドを呼び出す。
execute unless data storage reizo_mcfunc_engin:api Call{Implement:1b} run function reizo_mcfunc_engin:api/call/core/super.m with storage reizo_mcfunc_engin:api Args.Call

# お掃除
data remove storage reizo_mcfunc_engin:api Args.Call