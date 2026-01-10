#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/feet/run
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/feet/foreach

# データを取得
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item data.Equipment.feet.components."minecraft:custom_data".Item

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_