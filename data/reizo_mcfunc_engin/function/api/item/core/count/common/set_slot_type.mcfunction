#> reizo_mcfunc_engin:api/item/core/count/common/set_slot_type
#
# 
#
# @within function reizo_mcfunc_engin:api/item/count/set.m

#> どのスロットタイプを使用するかセットする。
    # Weapon
        execute if data storage reizo_mcfunc_engin:api Args.Item.Count{Slot:"mainhand"} run return run data modify storage reizo_mcfunc_engin:api Args.Item.Count.SlotType set value "weapon"
        execute if data storage reizo_mcfunc_engin:api Args.Item.Count{Slot:"offhand"} run return run data modify storage reizo_mcfunc_engin:api Args.Item.Count.SlotType set value "weapon"
    # Armor
        execute if data storage reizo_mcfunc_engin:api Args.Item.Count{Slot:"head"} run return run data modify storage reizo_mcfunc_engin:api Args.Item.Count.SlotType set value "armor"
        execute if data storage reizo_mcfunc_engin:api Args.Item.Count{Slot:"chest"} run return run data modify storage reizo_mcfunc_engin:api Args.Item.Count.SlotType set value "armor"
        execute if data storage reizo_mcfunc_engin:api Args.Item.Count{Slot:"legs"} run return run data modify storage reizo_mcfunc_engin:api Args.Item.Count.SlotType set value "armor"
        execute if data storage reizo_mcfunc_engin:api Args.Item.Count{Slot:"feet"} run return run data modify storage reizo_mcfunc_engin:api Args.Item.Count.SlotType set value "armor"
    # Container
    data modify storage reizo_mcfunc_engin:api Args.Item.Count.SlotType set value "container"