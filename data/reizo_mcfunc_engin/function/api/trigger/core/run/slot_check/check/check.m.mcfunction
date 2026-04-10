#> reizo_mcfunc_engin:api/trigger/core/run/slot_check/check/check.m
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/slot_check/check/foreach

$execute if data storage reizo_mcfunc_engin:api Trigger.run.Item.Check.Entry{ID:"$(ID)",namespace:"$(namespace)"} run data modify storage reizo_mcfunc_engin:api Trigger.run.Check set value 1b