#> reizo_mcfunc_engin:api/trigger/core/run/slot_check/check/foreach
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/slot_check/_

# 先頭取得
data modify storage reizo_mcfunc_engin:api Trigger.run.Item.Check.Entry set from storage reizo_mcfunc_engin:api Trigger.run.Item.GetData.ArgsStack[0]

# データが一致したら動く
function reizo_mcfunc_engin:api/trigger/core/run/slot_check/check/check.m with storage reizo_mcfunc_engin:api Trigger.run.Entry

# お掃除
    data remove storage reizo_mcfunc_engin:api Trigger.run.Item.Check.Entry
    data remove storage reizo_mcfunc_engin:api Trigger.run.Item.GetData.ArgsStack[0]

# 先頭が残り、まだ実行フラグがたっていないなら再帰
execute if data storage reizo_mcfunc_engin:api Trigger.run.Item.GetData.ArgsStack[0] unless data storage reizo_mcfunc_engin:api Trigger.run.Item.Check{Flag:1b} run function reizo_mcfunc_engin:api/trigger/core/run/slot_check/check/foreach