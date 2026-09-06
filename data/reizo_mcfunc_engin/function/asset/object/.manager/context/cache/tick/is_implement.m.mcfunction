#> reizo_mcfunc_engin:asset/object/.manager/context/cache/tick/is_implement.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/context/cache/tick/foreach

$execute store success storage reizo_mcfunc_engin:context Temp.Cache.Implement byte 1 run schedule function $(namespace):asset/object/$(ID)/tick/_ 2147483647t
$schedule clear $(namespace):asset/object/$(ID)/tick/_