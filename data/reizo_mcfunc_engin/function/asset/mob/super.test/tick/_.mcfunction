#> reizo_mcfunc_engin:asset/mob/super.test/tick/_
#
# 継承のテスト用スーパークラス
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m

# 多分このパーティクルなら分かりやすい...ハズ...
particle wax_on ~ ~ ~

# API用変数に値を移動
    data modify storage reizo_mcfunc_engin:api Args.CallMethod set from entity @s data.Mob
    data modify storage reizo_mcfunc_engin:api Args.CallMethod.Type set value "mob"
    data modify storage reizo_mcfunc_engin:api Args.CallMethod.Method set value "tick/test"

# API実行
function reizo_mcfunc_engin:api/call_method/_