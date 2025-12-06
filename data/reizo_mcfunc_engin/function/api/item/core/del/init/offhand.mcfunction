#> reizo_mcfunc_engin:api/item/core/del/init/offhand
#
# 
#
# @within function reizo_mcfunc_engin:api/item/core/del/init/_

# 必要なデータを取得する。
    data modify storage reizo_mcfunc_engin:api Item.Del.Slot set value "weapon.offhand"
    execute store result score $Item.Del.Count reizo_mcfunc_Engin.Temp run data get entity @s equipment.offhand.count
    execute store result storage reizo_mcfunc_engin:api Item.Del.Done byte 1 if data entity @s equipment.offhand.components."minecraft:custom_data".Item