#> reizo_mcfunc_engin:asset/mob/.manager/summon/summon
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/run.m

# 召喚！
function reizo_mcfunc_engin:asset/mob/.manager/summon/core/summon with storage reizo_mcfunc_engin:mob

# Init処理
execute as @e[tag=reizo_mcfunc_Engin.Mob.Init] at @s run \
function reizo_mcfunc_engin:asset/mob/.manager/summon/init

# リセット
data remove storage reizo_mcfunc_engin:mob ID
data remove storage reizo_mcfunc_engin:mob namespace
data remove storage reizo_mcfunc_engin:mob Register