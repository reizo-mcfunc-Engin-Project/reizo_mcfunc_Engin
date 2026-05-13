#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/run/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/foreach

# データを取得
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item data.Equipment.chest.components."minecraft:custom_data".Item

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_

# thisを入れる
item modify entity @s armor.chest {function:"copy_custom_data",source:{type:"storage",source:"reizo_mcfunc_engin:context"},ops:[{op:"replace",source:"this",target:"Item.this"}]}