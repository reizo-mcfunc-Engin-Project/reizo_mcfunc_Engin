#> reizo_mcfunc_engin:asset/object/.manager/summon/summon
#
# 召喚処理はここで管理。
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/run.m

# 登録しておく。
function reizo_mcfunc_engin:asset/object/.manager/register/run.m with storage reizo_mcfunc_engin:object

# 抽象的なObjectであるならこの召喚は許されない。
execute \
if predicate {condition:"value_check",value:{type:"storage",storage:"reizo_mcfunc_engin:object",path:"Register.IsAbstract"},range:1b} run \
return run tellraw @s {"text":"抽象的なObjectであるため、召喚できませんでした。","color":"red"}

# 召喚！
function reizo_mcfunc_engin:asset/object/.manager/summon/core/summon.m with storage reizo_mcfunc_engin:object

# init処理
execute as @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.Init] at @s run \
function reizo_mcfunc_engin:asset/object/.manager/summon/init

# リセット
data remove storage reizo_mcfunc_engin:object ID
data remove storage reizo_mcfunc_engin:object namespace
data remove storage reizo_mcfunc_engin:object Register