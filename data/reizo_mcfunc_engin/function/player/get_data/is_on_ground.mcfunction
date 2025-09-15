#> reizo_mcfunc_engin:player/get_data/is_on_ground
#
# 
#
# @within function reizo_mcfunc_engin:player/get_data/tick

tag @s[tag=reizo_mcfunc_Engin.is_on_ground] remove reizo_mcfunc_Engin.is_on_ground
execute \
if data entity @s {OnGround:1b} run \
tag @s add reizo_mcfunc_Engin.is_on_ground