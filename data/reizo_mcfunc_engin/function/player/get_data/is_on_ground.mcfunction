#> reizo_mcfunc_engin:player/get_data/is_on_ground
#
# 
#
# @within function reizo_mcfunc_engin:player/get_data/tick

tag @s[tag=reizo_mcfunc_Engin.Is_on_Ground] remove reizo_mcfunc_Engin.Is_on_Ground
execute \
if data entity @s {OnGround:1b} run \
tag @s add reizo_mcfunc_Engin.Is_on_Ground