#> reizo_mcfunc_engin:api/item/core/del/init/feet
#
# 
#
# @within function reizo_mcfunc_engin:api/item/core/del/init/_

# 必要なデータを取得する。
    data modify storage reizo_mcfunc_engin:api Item.Del.Slot set value "armor.feet"
    execute store result storage reizo_mcfunc_engin:api Item.Del.Done byte 1 if data entity @s equipment.feet.components."minecraft:custom_data".Item