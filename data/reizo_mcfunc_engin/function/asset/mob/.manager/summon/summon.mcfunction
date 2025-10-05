#> reizo_mcfunc_engin:asset/mob/.manager/summon/summon
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/_

# 抽象的なMobであるならこの召喚は許されない。
execute \
if predicate {condition:"value_check",value:{type:"storage",storage:"reizo_mcfunc_engin:mob",path:"Register.IsAbstract"},range:1b} run \
return run tellraw @s {"text":"抽象的なMobであるため、召喚できませんでした。","color":"red"}

# 召喚！
function reizo_mcfunc_engin:asset/mob/.manager/summon/run.m with storage reizo_mcfunc_engin:mob

# Init処理
execute as @e[tag=reizo_mcfunc_Engin.Mob,tag=reizo_mcfunc_Engin.Mob.Init] at @s run \
function reizo_mcfunc_engin:asset/mob/.manager/summon/init