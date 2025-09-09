#> reizo_mcfunc_engin:asset/tools/0003.get_distance/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/.manager/tick/run.m/_

# 俺が実行者
tag @s add reizo_mcfunc_Engin.This

#
execute \
unless entity @e[tag=reizo_mcfunc_Engin.Tools.GetDis.Target] \
if predicate reizo_mcfunc_engin:sneak \
as @n[distance=0.5..] at @s \
anchored eyes \
positioned ^ ^ ^ run \
particle electric_spark ~ ~0.8 ~ ~ ~ ~ 0 0 normal @a[tag=reizo_mcfunc_Engin.This]

execute \
if entity @e[tag=reizo_mcfunc_Engin.Tools.GetDis.Target] \
as @n[tag=reizo_mcfunc_Engin.Tools.GetDis.Target] at @s \
anchored eyes \
positioned ^ ^ ^ run \
particle wax_on ~ ~0.8 ~ ~ ~ ~ 0 0 normal @a[tag=reizo_mcfunc_Engin.This]

#
execute \
unless score @s reizo_mcfunc_Engin.GetDis.Get_N.UseCount matches -2147483648..2147483647 run \
scoreboard players set @s reizo_mcfunc_Engin.GetDis.Get_N.UseCount 0

# リセット
tag @s remove reizo_mcfunc_Engin.This