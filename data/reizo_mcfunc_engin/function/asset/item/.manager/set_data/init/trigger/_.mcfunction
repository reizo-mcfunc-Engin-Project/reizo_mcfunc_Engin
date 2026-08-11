#> reizo_mcfunc_engin:asset/item/.manager/set_data/init/trigger/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/set_data/init/_

# Argsのみは変わらないためここでセット
    data modify storage reizo_mcfunc_engin:item Registry.Trigger.RegisterArgs.ID set from storage reizo_mcfunc_engin:context Args.ID
    data modify storage reizo_mcfunc_engin:item Registry.Trigger.RegisterArgs.namespace set from storage reizo_mcfunc_engin:context Args.namespace

# 取得
data modify storage reizo_mcfunc_engin:item Registry.Trigger.data set from storage reizo_mcfunc_engin:item Register.Trigger

# 分けて登録
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/trigger/foreach

# お掃除
data remove storage reizo_mcfunc_engin:item Registry.Trigger