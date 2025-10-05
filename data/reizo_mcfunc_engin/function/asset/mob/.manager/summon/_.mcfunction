#> reizo_mcfunc_engin:asset/mob/.manager/summon/_
#
# 
#
# @within function reizo_mcfunc_engin:api/mob/summon.m

# 登録処理
function reizo_mcfunc_engin:asset/mob/.manager/register/run.m with storage reizo_mcfunc_engin:mob

# 抽象的なMobであるならこの召喚は許されない。
execute \
if predicate {condition:"value_check",value:{type:"storage",storage:"reizo_mcfunc_engin:mob",path:"Register.IsAbstract"},range:1b} run \
return run tellraw @s {"text":"抽象的なMobであるため、召喚できませんでした。","color":"red"}

# 召喚！
function reizo_mcfunc_engin:asset/mob/.manager/summon/run.m with storage reizo_mcfunc_engin:mob

# Init処理
execute as @e[tag=reizo_mcfunc_Engin.Mob,tag=reizo_mcfunc_Engin.Mob.Init] at @s run \
function reizo_mcfunc_engin:asset/mob/.manager/summon/init

# リセット
data remove storage reizo_mcfunc_engin:mob ID
data remove storage reizo_mcfunc_engin:mob namespace
data remove storage reizo_mcfunc_engin:mob Register