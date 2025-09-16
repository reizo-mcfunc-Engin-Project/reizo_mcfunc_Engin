#> reizo_mcfunc_engin:player/get_data/is_on_hurt
#
# 
#
# @within function reizo_mcfunc_engin:player/get_data/tick

tag @s[tag=reizo_mcfunc_Engin.Is_on_Hurt] remove reizo_mcfunc_Engin.Is_on_Hurt
execute \
if data entity @s {HurtTime:10s} run \
tag @s add reizo_mcfunc_Engin.Is_on_Hurt