#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/feet/run/not_hold
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/feet/recursion

# データ取得
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item data.Equipment.feet.components."minecraft:custom_data".Item

# 共通処理の呼び出し。
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/not_hold

# thisを入れる
    # thisがないなら動作中断
    execute unless data storage reizo_mcfunc_engin:context this run return 0
    # 引数セット
        data modify storage reizo_mcfunc_engin:item InThis.Args.data set from storage reizo_mcfunc_engin:context this
        execute store result storage reizo_mcfunc_engin:item InThis.Args.Slot int 1 run scoreboard players get $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp
    # アイテムを手に戻す
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/copy/slot.m with storage reizo_mcfunc_engin:item InThis.Args
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/copy/equipment.m with storage reizo_mcfunc_engin:context
    # お掃除
    data remove storage reizo_mcfunc_engin:item InThis