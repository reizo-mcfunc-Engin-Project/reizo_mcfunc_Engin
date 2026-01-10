#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/run
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/foreach

# データを取得
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item data.Equipment.offhand.components."minecraft:custom_data".Item

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_