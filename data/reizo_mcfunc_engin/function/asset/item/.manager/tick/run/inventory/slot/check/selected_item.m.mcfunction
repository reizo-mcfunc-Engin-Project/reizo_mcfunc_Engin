#> reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/check/selected_item.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/foreach

$execute if data storage reizo_mcfunc_engin:item data{SelectedItemSlot:$(Slot)} run \
function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/selected_item