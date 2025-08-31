#> reizo_mcfunc_engin:asset/tools/0003.get_distance/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/.manager/tick/run.m/_

# 使ったな！
execute \
if score @s reizo_mcfunc_Engin.using_Item matches 1 run \
function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/_

#
execute \
if predicate reizo_mcfunc_engin:sneak \
positioned as @n[distance=0.5..] run \
particle electric_spark ~ ~2.3 ~