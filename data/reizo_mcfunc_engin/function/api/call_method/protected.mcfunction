#> reizo_mcfunc_engin:api/call_method/protected
#
# 継承時にサブクラスとスーパークラスのみメソッドを呼び出せる。
#
# @api

# 継承情報があるなら継承元の動作を呼び出す。
    execute unless entity @s[type=player] if data entity @s data.Registry.Extends run function reizo_mcfunc_engin:api/call_method/core/extends.m with storage reizo_mcfunc_engin:api Args.CallMethod
    execute if entity @s[type=player] if data storage reizo_mcfunc_engin:item _.Registry.Extends run function reizo_mcfunc_engin:api/call_method/core/extends.m with storage reizo_mcfunc_engin:api Args.CallMethod

# 自分のメソッドを実行
function reizo_mcfunc_engin:api/call_method/core/run.m with storage reizo_mcfunc_engin:api Args.CallMethod

# リセット
data remove storage reizo_mcfunc_engin:api Args.CallMethod