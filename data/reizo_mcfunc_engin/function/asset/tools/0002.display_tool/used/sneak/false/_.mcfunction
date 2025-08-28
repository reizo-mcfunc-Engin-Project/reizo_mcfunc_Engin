#> reizo_mcfunc_engin:asset/tools/0002.display_tool/used/sneak/false
#
# ディスプレイの召喚のための準備
#
# @within function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/_

#> 左手、又は右手のブロック取得
    # 右手のほうを優先したいので、左手の処理を前に...
    execute \
    if data storage reizo_mcfunc_engin:_ Item.Off_Address run \
    data modify storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block set from entity @s SelectedItem.id
    # 右手
    execute \
    if data storage reizo_mcfunc_engin:_ Item.Main_Address run \
    data modify storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block set from entity @s equipment.offhand.id

# 何にも持っていないならガラスに。
    execute \
    unless data storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block run \
    data modify storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block set value "glass"

#> 右手と左手で召喚位置変更
    # 左手で視線から4マス先
    execute \
    if data storage reizo_mcfunc_engin:_ Item.Off_Address \
    anchored eyes \
    positioned ^ ^ ^4 run \
    function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/sneak/false/summon_display with storage reizo_mcfunc_engin:_ Tools.DisplayTool
    # 右手で視線から2マス先
    execute \
    if data storage reizo_mcfunc_engin:_ Item.Main_Address \
    anchored eyes \
    positioned ^ ^ ^2 run \
    function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/sneak/false/summon_display with storage reizo_mcfunc_engin:_ Tools.DisplayTool

#> デバッグ用
    # ストレージに見たいストレージを入れる。
    data modify storage reizo_mcfunc_engin:test OPS.NBT set from storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block
    # 召喚したブロックの名前をアウトプット
    execute \
    if entity @s[tag=reizo.Debug] run \
    function reizo_mcfunc_engin:test/out_put_storage