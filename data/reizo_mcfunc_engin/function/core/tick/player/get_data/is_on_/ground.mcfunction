#> reizo_mcfunc_engin:core/tick/player/get_data/is_on_/ground
#
# 地面についているならTag付与
#
# @within function reizo_mcfunc_engin:core/tick/player/get_data/_

#> 地面についているかいないか。
    # 先にTag剥奪
    tag @s[tag=reizo_mcfunc_Engin.Is_on_Ground] remove reizo_mcfunc_Engin.Is_on_Ground
    # 地面についているならOnGround付与
    execute \
    if entity @s[nbt={OnGround:1b}] run \
    tag @s add reizo_mcfunc_Engin.Is_on_Ground