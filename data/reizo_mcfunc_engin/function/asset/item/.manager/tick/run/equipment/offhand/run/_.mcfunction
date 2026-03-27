#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/run/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/foreach

# データを取得
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item data.Equipment.offhand.components."minecraft:custom_data".Item

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_

# thisを入れる
    # thisがないなら動作中断
    execute unless data storage reizo_mcfunc_engin:context this run return 0
    # アイテムを一時的にboxへ
    data modify block 10000 0 10000 Items[0] set from entity @s equipment.offhand
    # thisをアイテムへと入れる
    data modify block 10000 0 10000 Items[0].components."minecraft:custom_data".Item.this set from storage reizo_mcfunc_engin:context this
    # アイテムを手に戻す
    item replace entity @s weapon.offhand from block 10000 0 10000 container.0