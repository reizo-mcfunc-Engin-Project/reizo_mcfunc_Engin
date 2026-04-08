#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/run/not_hold
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/recursion

# データを取得
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item data.Equipment.offhand.components."minecraft:custom_data".Item

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/not_hold

# thisを入れる
    # 引数セット
        data modify storage reizo_mcfunc_engin:item InThis.Args.data set from storage reizo_mcfunc_engin:context this
        execute store result storage reizo_mcfunc_engin:item InThis.Args.Slot int 1 run scoreboard players get $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp
    # thisがないならデータを空にセット
    execute unless data storage reizo_mcfunc_engin:item InThis.Args.data run data modify storage reizo_mcfunc_engin:item InThis.Args.data set value {}
    # アイテムを手に戻す
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/copy/slot.m with storage reizo_mcfunc_engin:item InThis.Args
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/copy/equipment.m with storage reizo_mcfunc_engin:context
    # お掃除
    data remove storage reizo_mcfunc_engin:item InThis