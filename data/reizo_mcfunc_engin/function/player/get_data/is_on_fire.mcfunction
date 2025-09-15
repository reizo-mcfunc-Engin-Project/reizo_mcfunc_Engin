#> reizo_mcfunc_engin:player/get_data/is_on_fire
#
# 
#
# @within function reizo_mcfunc_engin:player/get_data/tick

tag @s[tag=reizo_mcfunc_Engin.is_on_fire] remove reizo_mcfunc_Engin.is_on_fire
execute \
if predicate reizo_mcfunc_engin:is_on_fire run \
tag @s add reizo_mcfunc_Engin.is_on_fire