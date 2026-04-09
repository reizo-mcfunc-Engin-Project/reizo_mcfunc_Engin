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
    # thisが空のObjectなら停止
    execute if data storage reizo_mcfunc_engin:context {this_Empty:1b} run return 0
    # thisがないならデータを空のやつに
    execute if data storage reizo_mcfunc_engin:context this run data modify storage reizo_mcfunc_engin:context this_Empty set value 0b
    execute unless data storage reizo_mcfunc_engin:context this run data modify storage reizo_mcfunc_engin:context this_Empty set value 1b
    execute unless data storage reizo_mcfunc_engin:context this run data modify storage reizo_mcfunc_engin:context this set value {}
    # 一度boxに移動
    item replace block 10000 0 10000 container.0 from entity @s armor.feet
    # boxに移動したアイテムにデータを適応
    # tellraw @a {"storage":"reizo_mcfunc_engin:context",nbt:"this",color:"green"}
    data modify block 10000 0 10000 Items[0].components."minecraft:custom_data".Item.this set from storage reizo_mcfunc_engin:context this
    # アイテムを手に戻す
    item replace entity @s armor.feet from block 10000 0 10000 container.0
    # お掃除
    data remove storage reizo_mcfunc_engin:context this_Empty