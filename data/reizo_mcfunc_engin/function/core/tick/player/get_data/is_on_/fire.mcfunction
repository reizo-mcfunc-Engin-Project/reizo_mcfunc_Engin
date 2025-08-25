#> reizo_mcfunc_engin:core/tick/player/get_data/is_on_/fire
#
# 燃えてるならTag付与
#
# @within function reizo_mcfunc_engin:core/tick/player/get_data/_

#> 俺、燃えてるし。
    # 先にTag剥奪
    tag @s[tag=reizo_mcfunc_Engin.Is_on_Fire] remove reizo_mcfunc_Engin.Is_on_Fire
    # 燃えてるならTag付け
    execute \
    if predicate reizo_mcfunc_engin:is_on_fire run \
    tag @s add reizo_mcfunc_Engin.Is_on_Fire