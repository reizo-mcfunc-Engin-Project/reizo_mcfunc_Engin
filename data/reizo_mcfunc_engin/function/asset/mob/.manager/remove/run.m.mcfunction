#> reizo_mcfunc_engin:asset/mob/.manager/remove/run.m
#
# Mobを削除する処理を呼び出す。
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/_

# IDと名前空間から処理を呼び出し
$function $(namespace):asset/mob/$(ID)/remove/_
$execute store success storage reizo_mcfunc_engin:mob Implement byte 1 run schedule function $(namespace):asset/mob/$(ID)/remove/_ 2147483647t
$schedule clear $(namespace):asset/mob/$(ID)/remove/_