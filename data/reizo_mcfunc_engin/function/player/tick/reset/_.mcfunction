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
    # Item
        # 左手
        execute \
        unless data entity @s equipment.offhand.components."minecraft:custom_data".Item run \
        function reizo_mcfunc_engin:player/tick/reset/item/off
        # 右手
        execute \
        unless data entity @s SelectedItem.components."minecraft:custom_data".Item run \
        function reizo_mcfunc_engin:player/tick/reset/item/main
    # Tool
        # 左手
        execute \
        unless data entity @s equipment.offhand.components."minecraft:custom_data".Tool run \
        function reizo_mcfunc_engin:player/tick/reset/tool/off
        # 右手
        execute \
        unless data entity @s SelectedItem.components."minecraft:custom_data".Tool run \
        function reizo_mcfunc_engin:player/tick/reset/tool/main