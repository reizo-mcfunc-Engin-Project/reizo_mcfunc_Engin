#> reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/selected_item
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/selected_item

# データ取得
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item data.SelectedItem.components."minecraft:custom_data".Item

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_

# thisを入れる
    # thisがないならデータを空のやつに
    execute unless data storage reizo_mcfunc_engin:context this run data modify storage reizo_mcfunc_engin:context this set value {}
    # アイテムを手に戻す
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/copy/selected_item.m with storage reizo_mcfunc_engin:context