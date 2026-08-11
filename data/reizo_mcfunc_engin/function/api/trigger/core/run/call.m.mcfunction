#> reizo_mcfunc_engin:api/trigger/core/run/call.m
#
# 
#
# @within function reizo_mcfunc_engin:api/trigger/core/run/foreach

$function $(namespace):asset/$(Type)/$(ID)/trigger/$(trigger)
$execute store success storage reizo_mcfunc_engin:api Trigger.run.Implement byte 1 run schedule function $(namespace):asset/$(Type)/$(ID)/trigger/$(trigger) 2147483647t
$schedule clear $(namespace):asset/$(Type)/$(ID)/trigger/$(trigger)