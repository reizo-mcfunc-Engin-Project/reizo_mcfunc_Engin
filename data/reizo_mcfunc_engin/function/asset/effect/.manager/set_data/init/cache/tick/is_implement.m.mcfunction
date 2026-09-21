#> reizo_mcfunc_engin:asset/effect/.manager/set_data/init/cache/tick/is_implement.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/set_data/init/cache/tick/foreach

$execute store success storage reizo_mcfunc_engin:effect Temp.Cache.Implement byte 1 run schedule function $(namespace):asset/effect/$(ID)/tick/_ 2147483647t
$schedule clear $(namespace):asset/effect/$(ID)/tick/_