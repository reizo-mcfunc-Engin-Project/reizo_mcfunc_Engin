#> reizo_mcfunc_engin:asset/item/.manager/tick/get_data/cleansing/selected_item
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/get_data/_

#> データ削除
    # SelectedItem
    execute \
    unless data storage reizo_mcfunc_engin:item data.SelectedItem.components."minecraft:custom_data".Item run \
    data remove storage reizo_mcfunc_engin:item data.SelectedItem
    # SelectedItemSlot
    execute \
    unless data storage reizo_mcfunc_engin:item data.SelectedItem.components."minecraft:custom_data".Item run \
    data remove storage reizo_mcfunc_engin:item data.SelectedItemSlot