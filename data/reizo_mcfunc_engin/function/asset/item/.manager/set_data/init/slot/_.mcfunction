#> reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/set_data/init/_

# 先頭をもらう。
data modify storage reizo_mcfunc_engin:item Registry.Slot.Top set from storage reizo_mcfunc_engin:item Register.Slot[0]

# コンバート
    # 右手
    execute \
    if data storage reizo_mcfunc_engin:item Registry.Slot{Top:"mainhand"} run \
    data modify storage reizo_mcfunc_engin:item Registry.Slot.Top set value -1
    # 左手
    execute \
    if data storage reizo_mcfunc_engin:item Registry.Slot{Top:"offhand"} run \
    data modify storage reizo_mcfunc_engin:item Registry.Slot.Top set value -2
    # 頭
    execute \
    if data storage reizo_mcfunc_engin:item Registry.Slot{Top:"head"} run \
    data modify storage reizo_mcfunc_engin:item Registry.Slot.Top set value -3
    # 胸
    execute \
    if data storage reizo_mcfunc_engin:item Registry.Slot{Top:"chest"} run \
    data modify storage reizo_mcfunc_engin:item Registry.Slot.Top set value -4
    # 脚
    execute \
    if data storage reizo_mcfunc_engin:item Registry.Slot{Top:"legs"} run \
    data modify storage reizo_mcfunc_engin:item Registry.Slot.Top set value -5
    # 足
    execute \
    if data storage reizo_mcfunc_engin:item Registry.Slot{Top:"feet"} run \
    data modify storage reizo_mcfunc_engin:item Registry.Slot.Top set value -6
    # ホットバー
    execute \
    if data storage reizo_mcfunc_engin:item Registry.Slot{Top:"hotbar"} run \
    return run function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/hotbar

# どれにも当てはまらなかったのなら数字なのでそのまま追加
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:null}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot[-1].Value set from storage reizo_mcfunc_engin:item Registry.Slot.Top

# お掃除
data remove storage reizo_mcfunc_engin:item Registry.Slot.Top
data remove storage reizo_mcfunc_engin:item Register.Slot[0]

# 先頭が残るなら再帰
execute \
if data storage reizo_mcfunc_engin:item Register.Slot[0] run \
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/_