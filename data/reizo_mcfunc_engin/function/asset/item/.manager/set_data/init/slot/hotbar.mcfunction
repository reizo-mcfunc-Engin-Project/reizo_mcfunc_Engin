#> reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/hotbar
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/_

# 追加
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:null}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot[-1].Value set value 0
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:null}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot[-1].Value set value 1
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:null}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot[-1].Value set value 2
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:null}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot[-1].Value set value 3
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:null}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot[-1].Value set value 4
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:null}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot[-1].Value set value 5
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:null}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot[-1].Value set value 6
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:null}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot[-1].Value set value 7
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:null}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot[-1].Value set value 8

# お掃除
data remove storage reizo_mcfunc_engin:item Registry.Slot.Top
data remove storage reizo_mcfunc_engin:item Register.Slot[0]

# 先頭が残るなら再帰
execute \
if data storage reizo_mcfunc_engin:item Register.Slot[0] run \
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/_