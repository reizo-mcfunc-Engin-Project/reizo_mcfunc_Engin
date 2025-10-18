#> reizo_mcfunc_engin:player/get_data/item
#
# 
#
# @within function reizo_mcfunc_engin:player/get_data/tick

#> 持っているアイテムデータ取得。
    # 右手のほうを優先したいので、左手の処理はここに。
            # ツール
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Tool.Off.ID set from entity @s equipment.offhand.components."minecraft:custom_data".Tool.ID
                # namespace
                data modify storage reizo_mcfunc_engin:_ Tool.Off.namespace set from entity @s equipment.offhand.components."minecraft:custom_data".Tool.namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Tool.Off.Extends set from entity @s equipment.offhand.components."minecraft:custom_data".Tool.Extends
            # アイテム
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Item.Off.ID set from entity @s equipment.offhand.components."minecraft:custom_data".Item.ID
                # namespace
                data modify storage reizo_mcfunc_engin:_ Item.Off.namespace set from entity @s equipment.offhand.components."minecraft:custom_data".Item.namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Item.Off.Extends set from entity @s equipment.offhand.components."minecraft:custom_data".Item.Registry.Extends
    # 右手
            # ツール
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Tool.Main.ID set from entity @s SelectedItem.components."minecraft:custom_data".Tool.ID
                # namespace
                data modify storage reizo_mcfunc_engin:_ Tool.Main.namespace set from entity @s SelectedItem.components."minecraft:custom_data".Tool.namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Tool.Main.Extends set from entity @s SelectedItem.components."minecraft:custom_data".Tool.Extends
            # アイテム
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Item.Main.ID set from entity @s SelectedItem.components."minecraft:custom_data".Item.ID
                # namespace
                data modify storage reizo_mcfunc_engin:_ Item.Main.namespace set from entity @s SelectedItem.components."minecraft:custom_data".Item.namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Item.Main.Extends set from entity @s SelectedItem.components."minecraft:custom_data".Item.Registry.Extends
    # 両手、基本的にここで持っていること検知
        # 左手からBothに
            # ツール
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Tool.Both.ID set from storage reizo_mcfunc_engin:_ Tool.Off.ID
                # namespace
                data modify storage reizo_mcfunc_engin:_ Tool.Both.namespace set from storage reizo_mcfunc_engin:_ Tool.Off.namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Tool.Both.Extends set from storage reizo_mcfunc_engin:_ Tool.Off.Extends
            # アイテム
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Item.Both.ID set from storage reizo_mcfunc_engin:_ Item.Off.ID
                # namespace
                data modify storage reizo_mcfunc_engin:_ Item.Both.namespace set from storage reizo_mcfunc_engin:_ Item.Off.namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Item.Both.Extends set from storage reizo_mcfunc_engin:_ Item.Off.Extends
        # 右手からBothに
            # ツール
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Tool.Both.ID set from storage reizo_mcfunc_engin:_ Tool.Main.ID
                # namespace
                data modify storage reizo_mcfunc_engin:_ Tool.Both.namespace set from storage reizo_mcfunc_engin:_ Tool.Main.namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Tool.Both.Extends set from storage reizo_mcfunc_engin:_ Tool.Main.Extends
            # アイテム
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Item.Both.ID set from storage reizo_mcfunc_engin:_ Item.Main.ID
                # namespace
                data modify storage reizo_mcfunc_engin:_ Item.Both.namespace set from storage reizo_mcfunc_engin:_ Item.Main.namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Item.Both.Extends set from storage reizo_mcfunc_engin:_ Item.Main.Extends