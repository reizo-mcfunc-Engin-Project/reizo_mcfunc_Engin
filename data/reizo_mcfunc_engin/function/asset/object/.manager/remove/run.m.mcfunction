#> reizo_mcfunc_engin:asset/object/.manager/remove/run.m
#
# 
#
# @within function reizo_mcfunc_engin:api/object/remove

# IDと名前空間から処理を呼び出し
$function $(namespace):asset/object/$(ID)/remove/_
$execute store success storage reizo_mcfunc_engin:object Implement byte 1 run schedule function $(namespace):asset/object/$(ID)/remove/_ 2147483647t
$schedule clear $(namespace):asset/object/$(ID)/remove/_