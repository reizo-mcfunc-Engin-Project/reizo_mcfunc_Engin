#> reizo_mcfunc_engin:player/get_data/_
#
# 
#
# @within advancement reizo_mcfunc_engin:player/get_data

#> もらったadvancementで分けていく
    # アイテムの使用
    execute \
    if entity @s[advancements={reizo_mcfunc_engin:player/get_data={using_item=true}}] run \
    scoreboard players add @s reizo_mcfunc_Engin.using_Item 1
    # 燃焼しているか。
    execute \
    if entity @s[advancements={reizo_mcfunc_engin:player/get_data={is_on_fire=true}}] run \
    tag @s add reizo_mcfunc_Engin.Is_on_Fire
    # 地面に着いているか。
    execute \
    if entity @s[advancements={reizo_mcfunc_engin:player/get_data={is_on_ground=true}}] run \
    tag @s add reizo_mcfunc_Engin.Is_on_Ground
    # しゃがんでいるか。
    execute \
    if entity @s[advancements={reizo_mcfunc_engin:player/get_data={is_on_sneaking=true}}] run \
    scoreboard players add @s reizo_mcfunc_Engin.Sneaking 1
    # 左クリックをしたか。
    execute \
    if entity @s[advancements={reizo_mcfunc_engin:player/get_data={left_click=true}}] run \
    tag @s add reizo_mcfunc_Engin.Click.Left
    # 右クリックをしたか。
    execute \
    if entity @s[advancements={reizo_mcfunc_engin:player/get_data={right_click=true}}] run \
    tag @s add reizo_mcfunc_Engin.Click.Right
    # ダメージを食らったか。
    execute \
    if entity @s[advancements={reizo_mcfunc_engin:player/get_data={is_on_hurt=true}}] run \
    tag @s add reizo_mcfunc_Engin.Is_on_Hurt