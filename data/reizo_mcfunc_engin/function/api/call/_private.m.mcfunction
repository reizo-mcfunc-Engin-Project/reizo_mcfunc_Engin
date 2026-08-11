#> reizo_mcfunc_engin:api/call/_private.m
#
# 
#
# @api

# これが継承中であり、このメソッドを呼び出しているメソッドが実装されていないのなら動作を中止する。
execute unless data storage reizo_mcfunc_engin:api Call{Implement:1b} if data storage reizo_mcfunc_engin:api Args.Super[-1].Value run return fail

# 引数取得
    $data modify storage reizo_mcfunc_engin:api Args.Call.Type set value "$(Type)"
    $data modify storage reizo_mcfunc_engin:api Args.Call.Method set value "$(Method)"

# 共通処理
function reizo_mcfunc_engin:api/call/core/common/_