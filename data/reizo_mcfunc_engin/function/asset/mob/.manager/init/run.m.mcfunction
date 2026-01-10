#> reizo_mcfunc_engin:asset/mob/.manager/init/run.m
#
# MobのInit処理を呼び出す。
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/init/_

# 多段継承の際にRegisterが残っていると動作がおかしくなるため消去
data remove storage reizo_mcfunc_engin:mob Register

$function $(namespace):asset/mob/$(ID)/init/_
$execute store success storage reizo_mcfunc_engin:mob Implement byte 1 run schedule function $(namespace):asset/mob/$(ID)/init/_ 2147483647t
$schedule clear $(namespace):asset/mob/$(ID)/init/_