#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/extends
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/run

# API用引数取得
    data modify storage reizo_mcfunc_engin:api Args.Extends.foreach set from storage reizo_mcfunc_engin:item data.Equipment.chest.components."minecraft:custom_data".Item.Registry.Extends
    data modify storage reizo_mcfunc_engin:api Args.Extends.SuperClass_Final set from storage reizo_mcfunc_engin:item data.Equipment.chest.components."minecraft:custom_data".Item.Registry.SuperClass_Final

# API実行
function reizo_mcfunc_engin:api/extends/foreach.m {Type:"item",namespace:"reizo_mcfunc_engin",func:"tick"}