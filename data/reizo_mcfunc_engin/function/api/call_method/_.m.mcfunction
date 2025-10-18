#> reizo_mcfunc_engin:api/call_method/_.m
#
# 
#
# @api

# TypeとMethodをセット
    $data modify storage reizo_mcfunc_engin:api Args.CallMethod.Type set value "$(Type)"
    $data modify storage reizo_mcfunc_engin:api Args.CallMethod.Method set value "$(Method)"

# 継承情報があるなら継承元の動作を実行
execute \
if data entity @s data.Registry.Extends run \
function reizo_mcfunc_engin:api/call_method/core/extends.m with storage reizo_mcfunc_engin:api Args.CallMethod

# 自分のメソッドを実行
function reizo_mcfunc_engin:api/call_method/core/run.m with storage reizo_mcfunc_engin:api Args.CallMethod

# リセット
data remove storage reizo_mcfunc_engin:api Args.CallMethod