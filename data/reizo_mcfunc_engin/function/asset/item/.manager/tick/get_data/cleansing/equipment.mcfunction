#> reizo_mcfunc_engin:asset/item/.manager/tick/get_data/cleansing/equipment
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/get_data/_

#> 不要なデータの削除
execute unless data storage reizo_mcfunc_engin:item data.Equipment.offhand.components."minecraft:custom_data".Item run data remove storage reizo_mcfunc_engin:item data.Equipment.offhand
execute unless data storage reizo_mcfunc_engin:item data.Equipment.head.components."minecraft:custom_data".Item run data remove storage reizo_mcfunc_engin:item data.Equipment.head
execute unless data storage reizo_mcfunc_engin:item data.Equipment.chest.components."minecraft:custom_data".Item run data remove storage reizo_mcfunc_engin:item data.Equipment.chest
execute unless data storage reizo_mcfunc_engin:item data.Equipment.legs.components."minecraft:custom_data".Item run data remove storage reizo_mcfunc_engin:item data.Equipment.legs
execute unless data storage reizo_mcfunc_engin:item data.Equipment.feet.components."minecraft:custom_data".Item run data remove storage reizo_mcfunc_engin:item data.Equipment.feet