#> reizo_mcfunc_engin:asset/mob/.manager/call_method/cache/is_implement.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/call_method/cache/foreach

$execute store success storage reizo_mcfunc_engin:mob Temp.Cache.Implement byte 1 run schedule function $(namespace):asset/mob/$(ID)/$(method) 2147483647t
$schedule clear $(namespace):asset/mob/$(ID)/$(method)