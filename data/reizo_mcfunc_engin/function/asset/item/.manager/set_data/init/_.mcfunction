#> reizo_mcfunc_engin:asset/item/.manager/set_data/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/_

# 名前
data modify entity @s Item.components."minecraft:item_name" set from storage reizo_mcfunc_engin:item Register.Name

# 説明文
data modify entity @s Item.components."minecraft:lore" append from storage reizo_mcfunc_engin:item Register.Lore[]

# 消費
data modify entity @s Item.components."minecraft:consumable" set from storage reizo_mcfunc_engin:item Register.Consumable

# FieldをCustomDataに入れる。
data modify entity @s Item.components."minecraft:custom_data".Item.Field set from storage reizo_mcfunc_engin:item Field

#> 実行されるスロット
    # チェック
    function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/_
    # コピー
    data modify storage reizo_mcfunc_engin:item Register.Slot set from storage reizo_mcfunc_engin:item Registry.Slot.Temp
    # custom_dataへ。
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot set from storage reizo_mcfunc_engin:item Register.Slot
    # お掃除
    data remove storage reizo_mcfunc_engin:item Registry.Slot