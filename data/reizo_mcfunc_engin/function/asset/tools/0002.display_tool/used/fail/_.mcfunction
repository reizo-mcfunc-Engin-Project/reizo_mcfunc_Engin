#> reizo_mcfunc_engin:asset/tools/0002.display_tool/used/fail/_
#
# 召喚されたディスプレイがアイテムだった場合はアイテムディスプレイにして再召喚
#
# @within function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/summon_display

# 死にます。
kill @n[tag=reizo_mcfunc_Engin.BD.Init,type=block_display,nbt={block_state:{Name:"minecraft:air"}}]

# Tag剥奪
tag @n[tag=reizo_mcfunc_Engin.BD.Init,type=block_display,nbt={block_state:{Name:"minecraft:air"}}] remove reizo_mcfunc_Engin.BD.Init

#> 左手、又は右手のアイテム取得
    # 右手！行ってこい！
    execute \
    if data storage reizo_mcfunc_engin:_ Item.Off_Address run \
    data modify storage reizo_mcfunc_engin:_ Tools.DisplayTool.Item set from entity @s SelectedItem
    # 左手先よ！
    execute \
    if data storage reizo_mcfunc_engin:_ Item.Main_Address run \
    data modify storage reizo_mcfunc_engin:_ Tools.DisplayTool.Item set from entity @s Inventory[{Slot:-106b}]

# 召喚
function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/fail/summon with storage reizo_mcfunc_engin:_ Tools.DisplayTool