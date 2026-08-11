#> reizo_mcfunc_engin:api/trigger/core/run/check/item/get_data/foreach
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/check/item/_

# 先頭取得
data modify storage reizo_mcfunc_engin:api Trigger.run.Item.GetData.Entry set from storage reizo_mcfunc_engin:api Trigger.run.Item.Slot[0]

# マクロでデータを取得
function reizo_mcfunc_engin:api/trigger/core/run/check/item/get_data/get/_

# お掃除
    data remove storage reizo_mcfunc_engin:api Trigger.run.Item.Slot[0]
    data remove storage reizo_mcfunc_engin:api Trigger.run.Item.GetData.Entry

# 先頭が残るなら再帰
execute if data storage reizo_mcfunc_engin:api Trigger.run.Item.Slot[0] run function reizo_mcfunc_engin:api/trigger/core/run/check/item/get_data/foreach