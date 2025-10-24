#> reizo_mcfunc_engin:api/call_method/private
#
# 他メソッドから処理を呼び出せないメソッド。
#
# @api

# 継承中の動作ならば動作を途中で中断
execute \
if predicate {condition:"value_check",value:{type:"storage",storage:"reizo_mcfunc_engin:api",path:"Extends.foreach.Inheriting"},range:1b} run \
return run data remove storage reizo_mcfunc_engin:api Args.CallMethod

# 継承情報があるなら継承元の動作を実行
    # Type = !Player and If @s data.Registry.Extends
    execute \
    if entity @s[type=!player] \
    if data entity @s data.Registry.Extends run \
    function reizo_mcfunc_engin:api/call_method/core/extends.m with storage reizo_mcfunc_engin:api Args.CallMethod
    # Type = Player and If reizo_mcfunc_engin:_ Item.Both
    execute \
    if entity @s[type=player] \
    if data storage reizo_mcfunc_engin:_ Item.Both run \
    function reizo_mcfunc_engin:api/call_method/core/extends.m with storage reizo_mcfunc_engin:api Args.CallMethod

# 自分のメソッドを実行
function reizo_mcfunc_engin:api/call_method/core/run.m with storage reizo_mcfunc_engin:api Args.CallMethod

# リセット
data remove storage reizo_mcfunc_engin:api Args.CallMethod