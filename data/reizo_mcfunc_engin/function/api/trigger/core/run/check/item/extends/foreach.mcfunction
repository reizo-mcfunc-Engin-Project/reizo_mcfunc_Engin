#> reizo_mcfunc_engin:api/trigger/core/run/check/item/extends/foreach
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/check/item/_

# 一時的に退避
function reizo_mcfunc_engin:asset/.manager/common/context/register/stash

# 先頭取得
data modify storage reizo_mcfunc_engin:api Trigger.run.Item.Extends.Entry set from storage reizo_mcfunc_engin:api Trigger.run.Item.Extends.Register[0]

# 登録処理
function reizo_mcfunc_engin:asset/item/.manager/register/run.m with storage reizo_mcfunc_engin:api Trigger.run.Item.Extends.Entry

# Slotのみ追加
data modify storage reizo_mcfunc_engin:api Trigger.run.Item.Slot append from storage reizo_mcfunc_engin:item Register.Slot[]

# お掃除
    data remove storage reizo_mcfunc_engin:api Trigger.run.Item.Extends.Entry
    data remove storage reizo_mcfunc_engin:api Trigger.run.Item.Extends.Register[0]
    data remove storage reizo_mcfunc_engin:item Register

# 戻す
function reizo_mcfunc_engin:asset/.manager/common/context/register/pop

# 先頭が残るなら再帰
execute if data storage reizo_mcfunc_engin:api Trigger.run.Item.Extends.Register[0] run function reizo_mcfunc_engin:api/trigger/core/run/check/item/extends/foreach