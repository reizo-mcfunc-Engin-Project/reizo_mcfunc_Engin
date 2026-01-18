#> reizo_mcfunc_engin:api/call/_protected.m
#
# 
#
# @api

# 必要データ取得
    $data modify storage reizo_mcfunc_engin:api Args.Call.Type set value "$(Type)"
    $data modify storage reizo_mcfunc_engin:api Args.Call.Method set value "$(Method)"

# 共通処理
function reizo_mcfunc_engin:api/call/core/common/_