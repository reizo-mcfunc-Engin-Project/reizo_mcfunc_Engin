#> reizo_mcfunc_engin:core/tick/player/get_data/_
#
# 
#
# @within function reizo_mcfunc_engin:player/get_data/tick

# 地面に着いている。
    tag @s[tag=reizo_mcfunc_Engin.Is_on_Ground] remove reizo_mcfunc_Engin.Is_on_Ground
    execute if data entity @s {OnGround:1b} run tag @s add reizo_mcfunc_Engin.Is_on_Ground

# スニークしている。
    execute if predicate reizo_mcfunc_engin:sneak run function reizo_mcfunc_engin:core/tick/player/get_data/sneaking