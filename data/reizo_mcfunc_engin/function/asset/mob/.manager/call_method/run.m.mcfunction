#> reizo_mcfunc_engin:asset/mob/.manager/call_method/run.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/call_method/_

$function $(namespace):asset/mob/$(ID)/$(method)
$execute store success storage reizo_mcfunc_engin:mob Implement byte 1 run schedule function $(namespace):asset/mob/$(ID)/$(method) 2147483647t
$schedule clear $(namespace):asset/mob/$(ID)/$(method)