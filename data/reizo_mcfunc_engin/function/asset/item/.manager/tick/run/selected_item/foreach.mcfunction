#> reizo_mcfunc_engin:asset/item/.manager/tick/run/selected_item/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/_

# 起動Slot取得
execute \
store result score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp run \
data get storage reizo_mcfunc_engin:item data.SelectedItem.components."minecraft:custom_data".Item.Registry.Slot[0]

# 値が-1以外なら再帰
execute \
unless score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -1 run \
return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/selected_item/recursion

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/selected_item/run