#> reizo_mcfunc_engin:core/tick/player/get_data/tick
#
# プレイヤーのデータをtick単位で取得する。
#
# @within function reizo_mcfunc_engin:core/tick/player/_

#> 持っているアイテムデータ取得。
    # 右手のほうを優先したいので、左手を前に書く
        # アドレス
        execute \
        if data entity @s equipment.offhand.components."minecraft:custom_data".Address run \
        data modify storage reizo_mcfunc_engin:_ Item.Off_Address set from entity @s equipment.offhand.components."minecraft:custom_data".Address
        # namespace
        execute \
        if data entity @s equipment.offhand.components."minecraft:custom_data".namespace run \
        data modify storage reizo_mcfunc_engin:_ Item.Off_namespace set from entity @s equipment.offhand.components."minecraft:custom_data".namespace
    # ここで右手
        # アドレス
        execute \
        if data entity @s SelectedItem.components."minecraft:custom_data".Address run \
        data modify storage reizo_mcfunc_engin:_ Item.Main_Address set from entity @s SelectedItem.components."minecraft:custom_data".Address
        # namespace
        execute \
        if data entity @s SelectedItem.components."minecraft:custom_data".namespace run \
        data modify storage reizo_mcfunc_engin:_ Item.Main_namespace set from entity @s SelectedItem.components."minecraft:custom_data".namespace
    # 両手で動作変えたくないときもあるでしょう。
        # 左手からBothに
            # アドレス
            execute \
            if data storage reizo_mcfunc_engin:_ Item.Off_Address run \
            data modify storage reizo_mcfunc_engin:_ Item.Both.Address set from storage reizo_mcfunc_engin:_ Item.Off_Address
            # namespace
            execute \
            if data storage reizo_mcfunc_engin:_ Item.Off_namespace run \
            data modify storage reizo_mcfunc_engin:_ Item.Both.namespace set from storage reizo_mcfunc_engin:_ Item.Off_namespace
        # 右手からBothに
            # アドレス
            execute \
            if data storage reizo_mcfunc_engin:_ Item.Main_Address run \
            data modify storage reizo_mcfunc_engin:_ Item.Both.Address set from storage reizo_mcfunc_engin:_ Item.Main_Address
            # namespace
            execute \
            if data storage reizo_mcfunc_engin:_ Item.Main_namespace run \
            data modify storage reizo_mcfunc_engin:_ Item.Both.namespace set from storage reizo_mcfunc_engin:_ Item.Main_namespace

# プレイヤーの数をスコアに反映
execute \
store result score $PlayerCount reizo_mcfunc_Engin._ \
if entity @s

# 地面についているかついていないか。
function reizo_mcfunc_engin:core/tick/player/get_data/is_on_/ground

# 燃えているから燃えていないか。
function reizo_mcfunc_engin:core/tick/player/get_data/is_on_/fire

# ダメージを食らったか。
function reizo_mcfunc_engin:core/tick/player/get_data/is_on_/hurt

# なんのエフェクトがついているか。
function reizo_mcfunc_engin:core/tick/player/get_data/effect/_