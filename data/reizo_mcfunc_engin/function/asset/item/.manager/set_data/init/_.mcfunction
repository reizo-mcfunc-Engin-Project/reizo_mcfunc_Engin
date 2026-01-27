#> reizo_mcfunc_engin:asset/item/.manager/set_data/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/_

# 名前
data modify entity @s Item.components."minecraft:item_name" set from storage reizo_mcfunc_engin:item Register.Name

# 説明文
data modify entity @s Item.components."minecraft:lore" set from storage reizo_mcfunc_engin:item Register.Lore

# 消費
data modify entity @s Item.components."minecraft:consumable" set from storage reizo_mcfunc_engin:item Register.Consumable

# FieldをCustomDataに入れる。
data modify entity @s Item.components."minecraft:custom_data".Item.Field set from storage reizo_mcfunc_engin:item Field

#> 実行されるスロット
    # チェック
    execute if data storage reizo_mcfunc_engin:item Register.Slot run function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/_
    # お掃除
    data remove storage reizo_mcfunc_engin:item Registry.Slot

# Registryに格納するもの
    # Extends
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Extends set from storage reizo_mcfunc_engin:item Register.Extends