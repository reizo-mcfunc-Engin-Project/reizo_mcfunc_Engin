#> reizo_mcfunc_engin:asset/item/.manager/call_method/cache/is_implement.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/call_method/cache/foreach

$execute store success storage reizo_mcfunc_engin:item Temp.Cache.Implement byte 1 run schedule function $(namespace):asset/item/$(ID)/$(method) 2147483647t
$schedule clear $(namespace):asset/item/$(ID)/$(method)