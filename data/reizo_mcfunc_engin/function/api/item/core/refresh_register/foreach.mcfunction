#> reizo_mcfunc_engin:api/item/core/refresh_register/foreach
#
# 
#
# @within function reizo_mcfunc_engin:api/item/refresh_register/inventory

# 先頭取得
    data modify storage reizo_mcfunc_engin:context Args set from storage reizo_mcfunc_engin:api Item.refresh_register.ArgsList[0]
    data remove storage reizo_mcfunc_engin:api Item.refresh_register.ArgsList[0]

# 取得した引数からboxに新しいアイテムを設置
function reizo_mcfunc_engin:api/item/box.m with storage reizo_mcfunc_engin:context Args

# インベントリに移動
    data modify storage reizo_mcfunc_engin:api Item.refresh_register.Slot set from storage reizo_mcfunc_engin:api Item.refresh_register.SlotList[0]
    function reizo_mcfunc_engin:api/item/core/refresh_register/set_item.m with storage reizo_mcfunc_engin:api Item.refresh_register
    data remove storage reizo_mcfunc_engin:api Item.refresh_register.SlotList[0]

# 要素が残るなら再帰
execute if data storage reizo_mcfunc_engin:api Item.refresh_register.ArgsList[0] run function reizo_mcfunc_engin:api/item/core/refresh_register/foreach