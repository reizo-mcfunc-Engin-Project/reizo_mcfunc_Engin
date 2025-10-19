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