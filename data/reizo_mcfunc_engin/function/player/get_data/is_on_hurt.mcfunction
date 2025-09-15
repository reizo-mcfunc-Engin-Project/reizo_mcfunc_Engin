#> reizo_mcfunc_engin:player/get_data/is_on_hurt
#
# 
#
# @within function reizo_mcfunc_engin:player/get_data/tick

tag @s[tag=reizo_mcfunc_Engin.is_on_hurt] remove reizo_mcfunc_Engin.is_on_hurt
execute \
if data entity @s {HurtTime:10s} run \
tag @s add reizo_mcfunc_Engin.is_on_hurt