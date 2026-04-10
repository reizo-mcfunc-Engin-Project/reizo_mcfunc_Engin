#> reizo_mcfunc_engin:api/trigger/core/run/check/item/check.m
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/check/item/foreach

$execute if data storage reizo_mcfunc_engin:api Trigger.run.Item.Check.Entry.Args{ID:"$(ID)",namespace:"$(namespace)"} run data modify storage reizo_mcfunc_engin:api Trigger.run.Check set value 1b