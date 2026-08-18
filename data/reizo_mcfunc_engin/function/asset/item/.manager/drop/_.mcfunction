#> reizo_mcfunc_engin:asset/item/.manager/drop/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/_

# スコアリセット
scoreboard players reset @s reizo_mcfunc_Engin.Drop

# このアイテムはドロップ検知を行わないのならここで終了
execute unless data entity @n[type=item,distance=..1.35,nbt={Age:0s}] Item.components."minecraft:custom_data".Item.Registry{Drop:1b} run return 0

# タグツケ
tag @n[type=item,distance=..1.35,nbt={Age:0s}] add reizo_mcfunc_Engin.Item.Drop

# アイテム対象にする。
execute as @n[tag=reizo_mcfunc_Engin.Item.Drop] run function reizo_mcfunc_engin:asset/item/.manager/drop/item/_

# メソッドを呼ぶ
function reizo_mcfunc_engin:api/call/_protected.m {Type:"item",Method:"drop/_"}

# thisを入れる
data modify entity @n[tag=reizo_mcfunc_Engin.Item.Drop] Item.components."minecraft:custom_data".Item.Field set from storage reizo_mcfunc_engin:context this

# お掃除
    data remove storage reizo_mcfunc_engin:context Args
    data remove storage reizo_mcfunc_engin:context origin_Args
    data remove storage reizo_mcfunc_engin:context this