#> reizo_mcfunc_engin:asset/tools/0003.get_distance/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/.manager/tick/run.m/_

#
execute \
unless entity @e[tag=reizo_mcfunc_Engin.Tools.GetDis.Target] \
if predicate reizo_mcfunc_engin:sneak \
positioned as @n[distance=0.5..] run \
particle electric_spark ~ ~2.3 ~

execute \
if entity @e[tag=reizo_mcfunc_Engin.Tools.GetDis.Target] \
if predicate reizo_mcfunc_engin:sneak \
positioned as @n[tag=reizo_mcfunc_Engin.Tools.GetDis.Target] run \
particle wax_on ~ ~2.3 ~

#
execute \
unless score @s reizo_mcfunc_Engin.GetDis.Get_N.UseCount matches -2147483648..2147483647 run \
scoreboard players set @s reizo_mcfunc_Engin.GetDis.Get_N.UseCount 0