#> reizo_mcfunc_engin:api/call/core/run.m
#
# 
#
# @within function reizo_mcfunc_engin:api/call/*

$function $(namespace):asset/$(Type)/$(ID)/$(Method)
$execute store success storage reizo_mcfunc_engin:api Call.Implement byte 1 run schedule function $(namespace):asset/$(Type)/$(ID)/$(Method) 2147483647t
$schedule clear $(namespace):asset/$(Type)/$(ID)/$(Method)