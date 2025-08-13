#> reizo_mcfunc_engin:core/tick/player/get_data/is_on_/hurt
#
# 
#
# @within function reizo_mcfunc_engin:core/tick/player/get_data/_

#> ダメージ食らった。
    # 先にTag剥奪
    tag @s remove reizo_mcfunc_Engin.Is_on_Hurt
    # ダメージを食らった直後は10sだからそれだけでOK
    execute \
    if entity @s[nbt={HurtTime:10s}] run \
    tag @s add reizo_mcfunc_Engin.Is_on_Hurt