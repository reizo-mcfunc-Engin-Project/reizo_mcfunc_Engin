#> reizo_mcfunc_engin:player/tick/reset/_
#
# 
#
# @within function reizo_mcfunc_engin:player/tick/_

# Tag
    # Click
    tag @s[tag=reizo_mcfunc_Engin.Click.Left] remove reizo_mcfunc_Engin.Click.Left
    tag @s[tag=reizo_mcfunc_Engin.Click.Right] remove reizo_mcfunc_Engin.Click.Right

# Storage
    execute \
    unless data entity @s SelectedItem.components."minecraft:custom_data".Item.Address run \
    data remove storage reizo_mcfunc_engin:_ Item
    execute \
    unless data entity @s SelectedItem.components."minecraft:custom_data".Tool.Address run \
    data remove storage reizo_mcfunc_engin:_ Tool