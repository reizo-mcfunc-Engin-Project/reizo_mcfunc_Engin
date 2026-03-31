#> reizo_mcfunc_engin:api/item/put_in/this
#
# 
#
# @api

# 動作スロットをストレージにして取得
execute store result storage reizo_mcfunc_engin:api Args.Item.RunSlot int 1 run scoreboard players get $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp

# カスタムデータに格納する。
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -6..-2 run return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/copy/equipment.m with storage reizo_mcfunc_engin:context
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -1 run return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/copy/selected_item.m with storage reizo_mcfunc_engin:context
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/copy/slot.m with storage reizo_mcfunc_engin:api Args.Item.RunSlot