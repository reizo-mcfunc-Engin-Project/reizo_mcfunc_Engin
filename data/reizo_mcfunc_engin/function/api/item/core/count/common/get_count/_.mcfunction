#> reizo_mcfunc_engin:api/item/core/count/common/get_count/_
#
# 
#
# @within function reizo_mcfunc_engin:api/item/count/add.m

#> 現在のアイテムの個数を取得する
    # Weapon
        execute if data storage reizo_mcfunc_engin:api Args.Item.Count{Slot:"mainhand"} run return run data modify storage reizo_mcfunc_engin:api Args.Item.Count.Value set from entity @s SelectedItem.count
        execute if data storage reizo_mcfunc_engin:api Args.Item.Count{Slot:"offhand"} run return run data modify storage reizo_mcfunc_engin:api Args.Item.Count.Value set from entity @s equipment.offhand.count
    # Armor
        execute if data storage reizo_mcfunc_engin:api Args.Item.Count{Slot:"head"} run return run data modify storage reizo_mcfunc_engin:api Args.Item.Count.Value set from entity @s equipment.head.count
        execute if data storage reizo_mcfunc_engin:api Args.Item.Count{Slot:"chest"} run return run data modify storage reizo_mcfunc_engin:api Args.Item.Count.Value set from entity @s equipment.chest.count
        execute if data storage reizo_mcfunc_engin:api Args.Item.Count{Slot:"legs"} run return run data modify storage reizo_mcfunc_engin:api Args.Item.Count.Value set from entity @s equipment.legs.count
        execute if data storage reizo_mcfunc_engin:api Args.Item.Count{Slot:"feet"} run return run data modify storage reizo_mcfunc_engin:api Args.Item.Count.Value set from entity @s equipment.feet.count
    # Container
    function reizo_mcfunc_engin:api/item/core/count/common/get_count/slot.m with storage reizo_mcfunc_engin:api Args.Item.Count