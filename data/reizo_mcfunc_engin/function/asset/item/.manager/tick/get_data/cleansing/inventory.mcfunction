#> reizo_mcfunc_engin:asset/item/.manager/tick/get_data/cleansing/inventory
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/get_data/_

# 必要データならば退避
execute \
if data storage reizo_mcfunc_engin:item Cleansing.Inventory[0].components."minecraft:custom_data".Item run \
data modify storage reizo_mcfunc_engin:item Cleansing.Temp append from storage reizo_mcfunc_engin:item Cleansing.Inventory[0]

# 先頭削除
data remove storage reizo_mcfunc_engin:item Cleansing.Inventory[0]

# データがまだ存在するなら再帰
execute \
if data storage reizo_mcfunc_engin:item Cleansing.Inventory[0] run \
function reizo_mcfunc_engin:asset/item/.manager/tick/get_data/cleansing/inventory