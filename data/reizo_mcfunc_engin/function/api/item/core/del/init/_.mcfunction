#> reizo_mcfunc_engin:api/item/core/del/init/_
#
# 
#
# @within function reizo_mcfunc_engin:api/item/del.m

#> Init処理
    # MainHand
    execute \
    if data storage reizo_mcfunc_engin:api Item.Del{Slot:"mainhand"} run \
    return run function reizo_mcfunc_engin:api/item/core/del/init/mainhand
    # OffHand
    execute \
    if data storage reizo_mcfunc_engin:api Item.Del{Slot:"offhand"} run \
    return run function reizo_mcfunc_engin:api/item/core/del/init/offhand
    # Head
    execute \
    if data storage reizo_mcfunc_engin:api Item.Del{Slot:"head"} run \
    return run function reizo_mcfunc_engin:api/item/core/del/init/head
    # Chest
    execute \
    if data storage reizo_mcfunc_engin:api Item.Del{Slot:"chest"} run \
    return run function reizo_mcfunc_engin:api/item/core/del/init/head
    # Legs
    execute \
    if data storage reizo_mcfunc_engin:api Item.Del{Slot:"legs"} run \
    return run function reizo_mcfunc_engin:api/item/core/del/init/legs
    # Feet
    execute \
    if data storage reizo_mcfunc_engin:api Item.Del{Slot:"Feet"} run \
    return run function reizo_mcfunc_engin:api/item/core/del/init/feet
    # スロット指定
    function reizo_mcfunc_engin:api/item/core/del/init/slot.m with storage reizo_mcfunc_engin:api Item.Del