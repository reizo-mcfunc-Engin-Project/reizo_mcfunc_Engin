#> reizo_mcfunc_engin:player/get_data/item
#
# 
#
# @within function reizo_mcfunc_engin:player/get_data/tick

#> 持っているアイテムデータ取得。
    # 右手のほうを優先したいので、左手の処理はここに。
            # ツール
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Tool.Off_Address set from entity @s equipment.offhand.components."minecraft:custom_data".Tool.Address
                # namespace
                data modify storage reizo_mcfunc_engin:_ Tool.Off_namespace set from entity @s equipment.offhand.components."minecraft:custom_data".Tool.namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Tool.Off_Extends set from entity @s equipment.offhand.components."minecraft:custom_data".Tool.Extends
            # アイテム
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Item.Off_Address set from entity @s equipment.offhand.components."minecraft:custom_data".Item.Address
                # namespace
                data modify storage reizo_mcfunc_engin:_ Item.Off_namespace set from entity @s equipment.offhand.components."minecraft:custom_data".Item.namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Item.Off_Extends set from entity @s equipment.offhand.components."minecraft:custom_data".Item.Extends
    # 右手
            # ツール
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Tool.Main_Address set from entity @s SelectedItem.components."minecraft:custom_data".Tool.Address
                # namespace
                data modify storage reizo_mcfunc_engin:_ Tool.Main_namespace set from entity @s SelectedItem.components."minecraft:custom_data".Tool.namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Tool.Main_Extends set from entity @s SelectedItem.components."minecraft:custom_data".Tool.Extends
            # アイテム
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Item.Main_Address set from entity @s SelectedItem.components."minecraft:custom_data".Item.Address
                # namespace
                data modify storage reizo_mcfunc_engin:_ Item.Main_namespace set from entity @s SelectedItem.components."minecraft:custom_data".Item.namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Item.Main_Extends set from entity @s SelectedItem.components."minecraft:custom_data".Item.Extends
    # 両手、基本的にここで持っていること検知
        # 左手からBothに
            # ツール
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Tool.Both.Address set from storage reizo_mcfunc_engin:_ Tool.Off_Address
                # namespace
                data modify storage reizo_mcfunc_engin:_ Tool.Both.namespace set from storage reizo_mcfunc_engin:_ Tool.Off_namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Tool.Both.Extends set from storage reizo_mcfunc_engin:_ Tool.Off_Extends
            # アイテム
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Item.Both.Address set from storage reizo_mcfunc_engin:_ Item.Off_Address
                # namespace
                data modify storage reizo_mcfunc_engin:_ Item.Both.namespace set from storage reizo_mcfunc_engin:_ Item.Off_namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Item.Both.Extends set from storage reizo_mcfunc_engin:_ Item.Off_Extends
        # 右手からBothに
            # ツール
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Tool.Both.Address set from storage reizo_mcfunc_engin:_ Tool.Main_Address
                # namespace
                data modify storage reizo_mcfunc_engin:_ Tool.Both.namespace set from storage reizo_mcfunc_engin:_ Tool.Main_namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Tool.Both.Extends set from storage reizo_mcfunc_engin:_ Tool.Main_Extends
            # アイテム
                # アドレス
                data modify storage reizo_mcfunc_engin:_ Item.Both.Address set from storage reizo_mcfunc_engin:_ Item.Main_Address
                # namespace
                data modify storage reizo_mcfunc_engin:_ Item.Both.namespace set from storage reizo_mcfunc_engin:_ Item.Main_namespace
                # 継承情報
                data modify storage reizo_mcfunc_engin:_ Item.Both.Extends set from storage reizo_mcfunc_engin:_ Item.Main_Extends