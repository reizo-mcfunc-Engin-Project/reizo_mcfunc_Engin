#> reizo_mcfunc_engin:player/get_data/Is_on_Fire
#
# 
#
# @within function reizo_mcfunc_engin:player/get_data/tick

tag @s[tag=reizo_mcfunc_Engin.Is_on_Fire] remove reizo_mcfunc_Engin.Is_on_Fire
execute \
if predicate reizo_mcfunc_engin:is_on_fire run \
tag @s add reizo_mcfunc_Engin.Is_on_Fire