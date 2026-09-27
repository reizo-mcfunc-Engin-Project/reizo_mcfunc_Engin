#> reizo_mcfunc_engin:asset/item/.manager/call_method/run.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/call_method/_

$function $(namespace):asset/item/$(ID)/$(method)
$execute store success storage reizo_mcfunc_engin:item Implement byte 1 run schedule function $(namespace):asset/item/$(ID)/$(method) 2147483647t
$schedule clear $(namespace):asset/item/$(ID)/$(method)