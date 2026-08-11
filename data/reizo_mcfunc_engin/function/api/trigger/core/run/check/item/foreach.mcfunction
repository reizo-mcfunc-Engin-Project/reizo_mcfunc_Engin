#> reizo_mcfunc_engin:api/trigger/core/run/check/item/foreach
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/check/item/_

# 先頭取得
data modify storage reizo_mcfunc_engin:api Trigger.run.Item.Check.Entry set from storage reizo_mcfunc_engin:api Trigger.run.Item.GetData.dataStack[0]

# データが一致したら動く
function reizo_mcfunc_engin:api/trigger/core/run/check/item/check.m with storage reizo_mcfunc_engin:api Trigger.run.Entry

# もし1bになっていたらデータを取得しておく
execute if data storage reizo_mcfunc_engin:api Trigger.run{Check:1b} run function reizo_mcfunc_engin:api/trigger/core/run/check/item/get_data_for_context

# お掃除
    data remove storage reizo_mcfunc_engin:api Trigger.run.Item.Check.Entry
    data remove storage reizo_mcfunc_engin:api Trigger.run.Item.GetData.dataStack[0]

# 先頭が残り、まだ実行フラグがたっていないなら再帰
execute if data storage reizo_mcfunc_engin:api Trigger.run.Item.GetData.dataStack[0] unless data storage reizo_mcfunc_engin:api Trigger.run{Check:1b} run function reizo_mcfunc_engin:api/trigger/core/run/check/item/foreach