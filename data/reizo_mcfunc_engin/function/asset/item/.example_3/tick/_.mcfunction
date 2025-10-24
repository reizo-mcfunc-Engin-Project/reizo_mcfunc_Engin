#> reizo_mcfunc_engin:asset/.example_3/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# Tick処理

#> Test
# API用変数に値を移動
    data modify storage reizo_mcfunc_engin:api Args.CallMethod.ID set from storage reizo_mcfunc_engin:_ Item.Both.ID
    data modify storage reizo_mcfunc_engin:api Args.CallMethod.namespace set from storage reizo_mcfunc_engin:_ Item.Both.namespace
    data modify storage reizo_mcfunc_engin:api Args.CallMethod.Type set value "item"
    data modify storage reizo_mcfunc_engin:api Args.CallMethod.Method set value "tick/test"
# API実行
function reizo_mcfunc_engin:api/call_method/protected