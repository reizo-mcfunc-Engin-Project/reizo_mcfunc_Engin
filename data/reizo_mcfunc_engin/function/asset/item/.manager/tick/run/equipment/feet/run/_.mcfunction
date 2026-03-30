#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/feet/run/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/feet/foreach

# データを取得
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item data.Equipment.feet.components."minecraft:custom_data".Item

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_

# thisを入れる
    # thisがないなら動作中断
    execute unless data storage reizo_mcfunc_engin:context this run return 0
    # アイテムを手に戻す
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/copy/equipment.m with storage reizo_mcfunc_engin:context