#> reizo_mcfunc_engin:asset/.example_super/tick/_
#
# ItemのTick処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run.m

# Tick処理
particle wax_on ~ ~ ~

#> Testメソッド
    # API用引数
    data modify storage reizo_mcfunc_engin:api Args.CallMethod.ID set from storage reizo_mcfunc_engin:item _.ID
    data modify storage reizo_mcfunc_engin:api Args.CallMethod.namespace set from storage reizo_mcfunc_engin:item _.namespace
    data modify storage reizo_mcfunc_engin:api Args.CallMethod.Type set value "item"
    data modify storage reizo_mcfunc_engin:api Args.CallMethod.Method set value "tick/test"
    # API実行
    function reizo_mcfunc_engin:api/call_method/protected