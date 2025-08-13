#> reizo_mcfunc_engin:asset/tools/0002.display_tool/used/sneak/false
#
# 
#
# @

#> 左手、又は右手のブロック取得
    # 右手！行ってこい！
    execute \
    if data storage reizo_mcfunc_engin:_ Item.Off_Address run \
    data modify storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block set from entity @s SelectedItem.id
    # 左手先よ！
    execute \
    if data storage reizo_mcfunc_engin:_ Item.Main_Address run \
    data modify storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block set from entity @s equipment.offhand.id

# なんもなくて泣く。(ガラスにする。)
    execute \
    unless data storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block run \
    data modify storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block set value "glass"

#> 右手と左手で召喚位置変更
    # 左手ぇ！
    execute \
    if data storage reizo_mcfunc_engin:_ Item.Off_Address \
    anchored eyes \
    positioned ^ ^ ^4 run \
    function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/sneak/false/summon_display with storage reizo_mcfunc_engin:_ Tools.DisplayTool
    # 右手ぇ！
    execute \
    if data storage reizo_mcfunc_engin:_ Item.Main_Address \
    anchored eyes \
    positioned ^ ^ ^2 run \
    function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/sneak/false/summon_display with storage reizo_mcfunc_engin:_ Tools.DisplayTool

# デバッグ用
execute \
if entity @s[tag=reizo.Debug] run \
tellraw @s {"storage":"reizo_mcfunc_engin:_",nbt:"Tools.DisplayTool.Block"}