#> reizo_mcfunc_engin:player/get_data/item
#
# 
#
# @within function reizo_mcfunc_engin:player/get_data/tick

#> 持っているアイテムデータ取得。
    # 右手のほうを優先したいので、左手の処理はここに。
            # ツール
                # アドレス
                execute \
                if data entity @s equipment.offhand.components."minecraft:custom_data".Tool.Address run \
                data modify storage reizo_mcfunc_engin:_ Tool.Off_Address set from entity @s equipment.offhand.components."minecraft:custom_data".Tool.Address
                # namespace
                execute \
                if data entity @s equipment.offhand.components."minecraft:custom_data".Tool.namespace run \
                data modify storage reizo_mcfunc_engin:_ Tool.Off_namespace set from entity @s equipment.offhand.components."minecraft:custom_data".Tool.namespace
            # アイテム
                # アドレス
                execute \
                if data entity @s equipment.offhand.components."minecraft:custom_data".Item.Address run \
                data modify storage reizo_mcfunc_engin:_ Item.Off_Address set from entity @s equipment.offhand.components."minecraft:custom_data".Item.Address
                # namespace
                execute \
                if data entity @s equipment.offhand.components."minecraft:custom_data".Item.namespace run \
                data modify storage reizo_mcfunc_engin:_ Item.Off_namespace set from entity @s equipment.offhand.components."minecraft:custom_data".Item.namespace
    # 右手
            # ツール
                # アドレス
                execute \
                if data entity @s SelectedItem.components."minecraft:custom_data".Tool.Address run \
                data modify storage reizo_mcfunc_engin:_ Tool.Main_Address set from entity @s SelectedItem.components."minecraft:custom_data".Tool.Address
                # namespace
                execute \
                if data entity @s SelectedItem.components."minecraft:custom_data".Tool.namespace run \
                data modify storage reizo_mcfunc_engin:_ Tool.Main_namespace set from entity @s SelectedItem.components."minecraft:custom_data".Tool.namespace
            # アイテム
                # アドレス
                execute \
                if data entity @s SelectedItem.components."minecraft:custom_data".Item.Address run \
                data modify storage reizo_mcfunc_engin:_ Item.Main_Address set from entity @s SelectedItem.components."minecraft:custom_data".Item.Address
                # namespace
                execute \
                if data entity @s SelectedItem.components."minecraft:custom_data".Item.namespace run \
                data modify storage reizo_mcfunc_engin:_ Item.Main_namespace set from entity @s SelectedItem.components."minecraft:custom_data".Item.namespace
    # 両手、基本的にここで持っていること検知
        # 左手からBothに
            # ツール
                # アドレス
                execute \
                if data storage reizo_mcfunc_engin:_ Tool.Off_Address run \
                data modify storage reizo_mcfunc_engin:_ Tool.Both.Address set from storage reizo_mcfunc_engin:_ Tool.Off_Address
                # namespace
                execute \
                if data storage reizo_mcfunc_engin:_ Tool.Off_namespace run \
                data modify storage reizo_mcfunc_engin:_ Tool.Both.namespace set from storage reizo_mcfunc_engin:_ Tool.Off_namespace
            # アイテム
                # アドレス
                execute \
                if data storage reizo_mcfunc_engin:_ Item.Off_Address run \
                data modify storage reizo_mcfunc_engin:_ Item.Both.Address set from storage reizo_mcfunc_engin:_ Item.Off_Address
                # namespace
                execute \
                if data storage reizo_mcfunc_engin:_ Item.Off_namespace run \
                data modify storage reizo_mcfunc_engin:_ Item.Both.namespace set from storage reizo_mcfunc_engin:_ Item.Off_namespace
        # 右手からBothに
            # ツール
                # アドレス
                execute \
                if data storage reizo_mcfunc_engin:_ Tool.Main_Address run \
                data modify storage reizo_mcfunc_engin:_ Tool.Both.Address set from storage reizo_mcfunc_engin:_ Tool.Main_Address
                # namespace
                execute \
                if data storage reizo_mcfunc_engin:_ Tool.Main_namespace run \
                data modify storage reizo_mcfunc_engin:_ Tool.Both.namespace set from storage reizo_mcfunc_engin:_ Tool.Main_namespace
            # アイテム
                # アドレス
                execute \
                if data storage reizo_mcfunc_engin:_ Item.Main_Address run \
                data modify storage reizo_mcfunc_engin:_ Item.Both.Address set from storage reizo_mcfunc_engin:_ Item.Main_Address
                # namespace
                execute \
                if data storage reizo_mcfunc_engin:_ Item.Main_namespace run \
                data modify storage reizo_mcfunc_engin:_ Item.Both.namespace set from storage reizo_mcfunc_engin:_ Item.Main_namespace