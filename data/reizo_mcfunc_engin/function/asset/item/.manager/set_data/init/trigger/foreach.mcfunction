#> reizo_mcfunc_engin:asset/item/.manager/set_data/init/trigger/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/set_data/init/_

# 先頭取得
    data modify storage reizo_mcfunc_engin:item Registry.Trigger.RegisterArgs.trigger set from storage reizo_mcfunc_engin:item Registry.Trigger.data[0]

# 登録
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/trigger/register.m with storage reizo_mcfunc_engin:item Registry.Trigger.RegisterArgs

# お掃除
    data remove storage reizo_mcfunc_engin:item Registry.Trigger.data[0]
    data remove storage reizo_mcfunc_engin:item Registry.Trigger.RegisterArgs.trigger

# 先頭が残るなら再帰
execute if data storage reizo_mcfunc_engin:item Registry.Trigger.data[0] run function reizo_mcfunc_engin:asset/item/.manager/set_data/init/trigger/foreach