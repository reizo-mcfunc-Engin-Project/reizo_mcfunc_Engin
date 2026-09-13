#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/run/not_hold
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/recursion

# データを取得
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item data.Equipment.offhand.components."minecraft:custom_data".Item

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/not_hold

# 実行出来たデータを退避させる
function reizo_mcfunc_engin:asset/item/.manager/not_hold/rerun/_stash

# thisを入れる
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/not_hold/_