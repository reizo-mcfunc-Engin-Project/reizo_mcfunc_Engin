#> reizo_mcfunc_engin:api/super/core/item_data_merge/_
#
# 
#
# @within function reizo_mcfunc_engin:api/super/core/foreach

# お掃除
data remove storage reizo_mcfunc_engin:api PutIn

# データをマージする
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches 0..26 run return run function reizo_mcfunc_engin:api/super/core/item_data_merge/slot/merge/_
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -1 if data entity @s SelectedItem.components."minecraft:custom_data".Item.this run return run data modify storage reizo_mcfunc_engin:context this merge from entity @s SelectedItem.components."minecraft:custom_data".Item.this
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -2 if data entity @s equipment.offhand.components."minecraft:custom_data".Item.this run return run data modify storage reizo_mcfunc_engin:context this merge from entity @s equipment.offhand.components."minecraft:custom_data".Item.this
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -3 if data entity @s equipment.head.components."minecraft:custom_data".Item.this run return run data modify storage reizo_mcfunc_engin:context this merge from entity @s equipment.head.components."minecraft:custom_data".Item.this
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -4 if data entity @s equipment.chest.components."minecraft:custom_data".Item.this run return run data modify storage reizo_mcfunc_engin:context this merge from entity @s equipment.chest.components."minecraft:custom_data".Item.this
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -5 if data entity @s equipment.legs.components."minecraft:custom_data".Item.this run return run data modify storage reizo_mcfunc_engin:context this merge from entity @s equipment.legs.components."minecraft:custom_data".Item.this
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -6 if data entity @s equipment.feet.components."minecraft:custom_data".Item.this run return run data modify storage reizo_mcfunc_engin:context this merge from entity @s equipment.feet.components."minecraft:custom_data".Item.this

# データが無ければ空にする
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches 0..26 run return run function reizo_mcfunc_engin:api/super/core/item_data_merge/slot/remove/_
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -1 run return run data remove storage reizo_mcfunc_engin:context this
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -2 run return run data remove storage reizo_mcfunc_engin:context this
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -3 run return run data remove storage reizo_mcfunc_engin:context this
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -4 run return run data remove storage reizo_mcfunc_engin:context this
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -5 run return run data remove storage reizo_mcfunc_engin:context this
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -6 run return run data remove storage reizo_mcfunc_engin:context this