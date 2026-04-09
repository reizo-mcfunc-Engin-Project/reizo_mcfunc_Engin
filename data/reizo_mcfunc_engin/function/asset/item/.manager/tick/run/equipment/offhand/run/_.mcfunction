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
    # thisがないならデータを空のやつに
    execute unless data storage reizo_mcfunc_engin:context this run data modify storage reizo_mcfunc_engin:context this set value {}
    # 一度boxに移動
    item replace block 10000 0 10000 container.0 from entity @s weapon.offhand
    # boxに移動したアイテムにデータを適応
    # tellraw @a {"storage":"reizo_mcfunc_engin:context",nbt:"this",color:"green"}
    data modify block 10000 0 10000 Items[0].components."minecraft:custom_data".Item.this set from storage reizo_mcfunc_engin:context this
    # アイテムを手に戻す
    item replace entity @s weapon.offhand from block 10000 0 10000 container.0