#> reizo_mcfunc_engin:asset/item/.manager/tick/extends
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/_

# API用のストレージに移動
    data modify storage reizo_mcfunc_engin:api Args.Extends.foreach set from storage reizo_mcfunc_engin:_ Item.Both.Extends
    execute \
    if data storage reizo_mcfunc_engin:_ Item.Off run \
    data modify storage reizo_mcfunc_engin:api Args.Extends.foreach.SuperClass_Final set from entity @s equipment.offhand.components."minecraft:custom_data".Item.Registry.SuperClass_Final
    execute \
    if data storage reizo_mcfunc_engin:_ Item.Main run \
    data modify storage reizo_mcfunc_engin:api Args.Extends.foreach.SuperClass_Final set from entity @s SelectedItem.components."minecraft:custom_data".Item.Registry.SuperClass_Final

# API起動
function reizo_mcfunc_engin:api/extends/foreach.m {Type:"item",namespace:"reizo_mcfunc_engin",func:"tick"}