#> reizo_mcfunc_engin:player/tick/reset/_
#
# 
#
# @within function reizo_mcfunc_engin:player/tick/_

# Tag
    tag @s[tag=reizo_mcfunc_Engin.Is_on_Fire,advancements={reizo_mcfunc_engin:player/get_data={is_on_fire=false}}] remove reizo_mcfunc_Engin.Is_on_Fire
    tag @s[tag=reizo_mcfunc_Engin.Is_on_Ground,advancements={reizo_mcfunc_engin:player/get_data={is_on_ground=false}}] remove reizo_mcfunc_Engin.Is_on_Ground
    tag @s[tag=reizo_mcfunc_Engin.Is_on_Hurt,advancements={reizo_mcfunc_engin:player/get_data={is_on_hurt=false}}] remove reizo_mcfunc_Engin.Is_on_Hurt


# Score
    execute \
    if entity @s[advancements={reizo_mcfunc_engin:player/get_data={using_item=false}}] run \
    scoreboard players reset @s reizo_mcfunc_Engin.using_Item
    execute \
    if entity @s[advancements={reizo_mcfunc_engin:player/get_data={is_on_sneaking=false}}] run \
    scoreboard players reset @s reizo_mcfunc_Engin.Sneaking

# Storage
    execute \
    unless data entity @s SelectedItem.components."minecraft:custom_data".Item.Address run \
    data remove storage reizo_mcfunc_engin:_ Item
    execute \
    unless data entity @s SelectedItem.components."minecraft:custom_data".Tool.Address run \
    data remove storage reizo_mcfunc_engin:_ Tool


# advancement
advancement revoke @s only reizo_mcfunc_engin:player/get_data