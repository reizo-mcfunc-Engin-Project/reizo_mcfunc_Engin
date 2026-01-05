#> reizo_mcfunc_engin:asset/mob/.manager/init/run.m
#
# MobのInit処理を呼び出す。
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/init/_

# 多段継承の際にこのデータが残っていると不便なため消去
data remove storage reizo_mcfunc_engin:mob Register

$function $(namespace):asset/mob/$(ID)/init/_