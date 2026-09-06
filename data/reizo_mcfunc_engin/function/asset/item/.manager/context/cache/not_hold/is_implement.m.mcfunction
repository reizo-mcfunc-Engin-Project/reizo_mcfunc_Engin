#> reizo_mcfunc_engin:asset/item/.manager/context/cache/not_hold/is_implement.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/context/cache/not_hold/foreach

$execute store success storage reizo_mcfunc_engin:context Temp.Cache.Implement byte 1 run schedule function $(namespace):asset/item/$(ID)/not_hold/_ 2147483647t
$schedule clear $(namespace):asset/item/$(ID)/not_hold/_