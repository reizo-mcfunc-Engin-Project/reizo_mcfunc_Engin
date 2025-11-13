#> reizo_mcfunc_engin:asset/item/.manager/tick/get_data/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/_

# データの取得
    data modify storage reizo_mcfunc_engin:item data.Inventory set from entity @s Inventory
    execute if data entity @s SelectedItem.components."minecraft:custom_data".Item run data modify storage reizo_mcfunc_engin:item data.SelectedItem set from entity @s SelectedItem
    execute if data entity @s SelectedItem.components."minecraft:custom_data".Item run data modify storage reizo_mcfunc_engin:item data.SelectedItemSlot set from entity @s SelectedItemSlot
    execute if data entity @s equipment run data modify storage reizo_mcfunc_engin:item data.Equipment set from entity @s equipment

#> 不要データの削除
    # データをコピー
    data modify storage reizo_mcfunc_engin:item Cleansing.Inventory set from storage reizo_mcfunc_engin:item data.Inventory
    # 不要データを削除。
    function reizo_mcfunc_engin:asset/item/.manager/tick/get_data/cleansing/inventory
    function reizo_mcfunc_engin:asset/item/.manager/tick/get_data/cleansing/equipment
    # 必要データのみ移動
    data modify storage reizo_mcfunc_engin:item data.Inventory set from storage reizo_mcfunc_engin:item Cleansing.Temp
    # お掃除
    data remove storage reizo_mcfunc_engin:item Cleansing