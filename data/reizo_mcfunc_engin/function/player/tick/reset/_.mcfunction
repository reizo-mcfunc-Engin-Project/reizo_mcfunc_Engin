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
        data remove storage reizo_mcfunc_engin:_ Item.Off
        # 右手
        data remove storage reizo_mcfunc_engin:_ Item.Main
        # 両手
        data remove storage reizo_mcfunc_engin:_ Item.Both
    # Tool
        # 左手
        data remove storage reizo_mcfunc_engin:_ Tool.Off
        # 右手
        data remove storage reizo_mcfunc_engin:_ Tool.Main
        # 両手
        data remove storage reizo_mcfunc_engin:_ Tool.Both