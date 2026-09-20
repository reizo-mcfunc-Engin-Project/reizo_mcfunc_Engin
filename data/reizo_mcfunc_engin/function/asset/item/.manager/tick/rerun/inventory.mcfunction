#> reizo_mcfunc_engin:asset/item/.manager/tick/rerun/inventory
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/_

# 先頭取得
data modify storage reizo_mcfunc_engin:item Rerun.Entry set from storage reizo_mcfunc_engin:item Old.Success.Inventory.Tick[0]

# 共通処理
function reizo_mcfunc_engin:asset/item/.manager/tick/rerun/_common

# お掃除
data remove storage reizo_mcfunc_engin:item Old.Success.Inventory.Tick[0]

# thisを入れる
    # Slot取得
    execute store result storage reizo_mcfunc_engin:item InThis.Slot int 1 run scoreboard players get $Item.Slot reizo_mcfunc_Engin.Temp
    # this取得
    data modify storage reizo_mcfunc_engin:item InThis.data set from storage reizo_mcfunc_engin:context this
    # コンポーネントにぶち込む
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/slot.m with storage reizo_mcfunc_engin:item InThis
    # お掃除
    data remove storage reizo_mcfunc_engin:item InThis

# 要素が残るなら再帰
execute if data storage reizo_mcfunc_engin:item Old.Success.Inventory.Tick[0] run return run function reizo_mcfunc_engin:asset/item/.manager/tick/rerun/inventory

# NotHoldもあるなら実行
execute if data storage reizo_mcfunc_engin:item Old.Success.NotHold[0] run function reizo_mcfunc_engin:asset/item/.manager/not_hold/rerun/_