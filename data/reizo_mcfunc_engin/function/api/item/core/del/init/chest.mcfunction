#> reizo_mcfunc_engin:api/item/core/del/init/chest
#
# 
#
# @within function reizo_mcfunc_engin:api/item/core/del/init/_

# 必要なデータを取得する。
    data modify storage reizo_mcfunc_engin:api Item.Del.Slot set value "armor.chest"
    execute store result storage reizo_mcfunc_engin:api Item.Del.Done byte 1 if data entity @s equipment.chest.components."minecraft:custom_data".Item