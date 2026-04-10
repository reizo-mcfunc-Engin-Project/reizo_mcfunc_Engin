#> reizo_mcfunc_engin:api/trigger/run.m
#
# 
#
# @api

# 引数を取得
$data modify storage reizo_mcfunc_engin:api Args.Trigger.run.trigger set value "$(trigger)"

# データを取得
$data modify storage reizo_mcfunc_engin:api Trigger.run.Registry set from storage reizo_mcfunc_engin:api Trigger.Registry.$(trigger)

# 分けて実行
function reizo_mcfunc_engin:api/trigger/core/run/foreach

# お掃除
    data remove storage reizo_mcfunc_engin:api Args.Trigger
    data remove storage reizo_mcfunc_engin:api Trigger.run
    data remove storage reizo_mcfunc_engin:context data
    data remove storage reizo_mcfunc_engin:context Args
    data remove storage reizo_mcfunc_engin:context origin_Args
    data remove storage reizo_mcfunc_engin:context this