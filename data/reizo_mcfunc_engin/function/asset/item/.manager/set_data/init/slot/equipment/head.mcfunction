#> reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/equipment/head
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/_

# データ追加
data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:-3}

# 再帰汎用処理
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/rec