#> reizo_mcfunc_engin:api/trigger/core/run/check/_
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/foreach

# タイプによって確認する内容を変更
    execute if data storage reizo_mcfunc_engin:api Trigger.run.Entry{Type:"mob"} run return run function reizo_mcfunc_engin:api/trigger/core/run/check/entity/mob with storage reizo_mcfunc_engin:api Trigger.run.Entry
    execute if data storage reizo_mcfunc_engin:api Trigger.run.Entry{Type:"object"} run return run function reizo_mcfunc_engin:api/trigger/core/run/check/entity/object with storage reizo_mcfunc_engin:api Trigger.run.Entry
    execute if data storage reizo_mcfunc_engin:api Trigger.run.Entry{Type:"item"} run return run function reizo_mcfunc_engin:api/trigger/core/run/check/item/_