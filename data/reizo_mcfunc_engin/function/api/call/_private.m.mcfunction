#> reizo_mcfunc_engin:api/call/_private.m
#
# 
#
# @api

# これが継承中ならば動作を中止する。
execute if data storage reizo_mcfunc_engin:api Super{IsInheriting:1b} run return fail

# 引数取得
    $data modify storage reizo_mcfunc_engin:api Args.Call.Type set value "$(Type)"
    $data modify storage reizo_mcfunc_engin:api Args.Call.Method set value "$(Method)"

# 共通処理
function reizo_mcfunc_engin:api/call/core/common/_