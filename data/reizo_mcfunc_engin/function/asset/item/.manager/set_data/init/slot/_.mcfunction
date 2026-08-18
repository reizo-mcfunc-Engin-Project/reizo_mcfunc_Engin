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
    return run function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/mainhand
    # 左手
    execute \
    if data storage reizo_mcfunc_engin:item Registry.Slot{Top:"offhand"} run \
    return run function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/equipment/offhand
    # 頭
    execute \
    if data storage reizo_mcfunc_engin:item Registry.Slot{Top:"head"} run \
    return run function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/equipment/head
    # 胸
    execute \
    if data storage reizo_mcfunc_engin:item Registry.Slot{Top:"chest"} run \
    return run function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/equipment/chest
    # 脚
    execute \
    if data storage reizo_mcfunc_engin:item Registry.Slot{Top:"legs"} run \
    return run function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/equipment/legs
    # 足
    execute \
    if data storage reizo_mcfunc_engin:item Registry.Slot{Top:"feet"} run \
    return run function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/equipment/feet
    # ホットバー
    execute \
    if data storage reizo_mcfunc_engin:item Registry.Slot{Top:"hotbar"} run \
    return run function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/hotbar

# どれにも当てはまらなかったのなら数字なのでそのまま追加
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value {Value:null}
    data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot[-1].Value set from storage reizo_mcfunc_engin:item Registry.Slot.Top

# TargetTypeを確定させる。
data modify entity @s Item.components."minecraft:custom_data".Item.Registry.TargetType set value "Inventory"

# 再帰汎用処理
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/rec