#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/run/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/foreach

# スコアにも入れておく
scoreboard players set $Item.Slot reizo_mcfunc_Engin.Temp -4

# データを取得
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item data.Equipment.chest.components."minecraft:custom_data".Item

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_

# thisを入れる
item modify entity @s armor.chest {function:"copy_custom_data",source:{type:"storage",source:"reizo_mcfunc_engin:context"},ops:[{op:"replace",source:"this",target:"Item.Field"}]}