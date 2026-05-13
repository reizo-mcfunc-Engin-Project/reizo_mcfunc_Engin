#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/legs/run/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/legs/foreach

# データを取得
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item data.Equipment.legs.components."minecraft:custom_data".Item

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_

# thisを入れる
item modify entity @s armor.legs {function:"copy_custom_data",source:{type:"storage",source:"reizo_mcfunc_engin:context"},ops:[{op:"replace",source:"this",target:"Item.Field"}]}