#> reizo_mcfunc_engin:asset/item/.manager/context/cache/tick/is_implement.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/context/cache/tick/foreach

$execute store success storage reizo_mcfunc_engin:context Temp.Cache.Implement byte 1 run schedule function $(namespace):asset/item/$(ID)/tick/_ 2147483647t
$schedule clear $(namespace):asset/item/$(ID)/tick/_