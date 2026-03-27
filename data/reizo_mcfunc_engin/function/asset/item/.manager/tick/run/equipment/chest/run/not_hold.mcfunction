#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/run/not_hold
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/recursion

# データ取得
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item data.Equipment.chest.components."minecraft:custom_data".Item

# 共通処理の呼び出し。
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/not_hold

# thisを入れる
    # thisがないなら動作中断
    execute unless data storage reizo_mcfunc_engin:context this run return 0
    # アイテムを一時的にboxへ
    data modify block 10000 0 10000 Items[0] set from entity @s equipment.chest
    # thisをアイテムへと入れる
    data modify block 10000 0 10000 Items[0].components."minecraft:custom_data".Item.this set from storage reizo_mcfunc_engin:context this
    # アイテムを手に戻す
    execute store result storage reizo_mcfunc_engin:item InThis.replace_item.Args.Slot int 1 run scoreboard players get $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/replace_item/slot.m with storage reizo_mcfunc_engin:item InThis.replace_item.Args
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/replace_item/equipment