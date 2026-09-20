#> reizo_mcfunc_engin:asset/item/.manager/tick/run/selected_item/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/_

# data作成
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item data.SelectedItem.components."minecraft:custom_data".Item

# Slotメインハンドのものか確認
execute \
unless data storage reizo_mcfunc_engin:context data.Registry{IsTicking:0b} \
if data storage reizo_mcfunc_engin:context data.Registry.Slot[{Value:-1}] run \
function reizo_mcfunc_engin:asset/item/.manager/tick/run/selected_item/run