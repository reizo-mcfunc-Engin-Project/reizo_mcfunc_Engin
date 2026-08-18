#> reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/hotbar
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/_

# 追加
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:0b}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:1b}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:2b}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:3b}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:4b}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:5b}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:6b}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:7b}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:8b}

# お掃除
data remove storage reizo_mcfunc_engin:item Registry.Slot.Top
data remove storage reizo_mcfunc_engin:item Register.Slot[0]

# TargetTypeを確定させる。
execute unless data entity @s Item.components."minecraft:custom_data".Item.Registry.TargetType run \
data modify entity @s Item.components."minecraft:custom_data".Item.Registry.TargetType set value "Inventory"

# 先頭が残るなら再帰
execute \
if data storage reizo_mcfunc_engin:item Register.Slot[0] run \
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/_