#> reizo_mcfunc_engin:asset/item/.manager/tick/run.m
#
# 
#
# @within function
#    reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run
#    reizo_mcfunc_engin:asset/item/.manager/tick/run/selected_item/run

$function $(namespace):asset/item/$(ID)/tick/_
$execute store success storage reizo_mcfunc_engin:item Implement byte 1 run schedule function $(namespace):asset/item/$(ID)/tick/_ 2147483647t
$schedule clear $(namespace):asset/item/$(ID)/tick/_