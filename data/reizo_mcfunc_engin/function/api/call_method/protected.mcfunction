#> reizo_mcfunc_engin:api/call_method/protected
#
# 継承時にサブクラスとスーパークラスのみメソッドを呼び出せる。
#
# @api

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