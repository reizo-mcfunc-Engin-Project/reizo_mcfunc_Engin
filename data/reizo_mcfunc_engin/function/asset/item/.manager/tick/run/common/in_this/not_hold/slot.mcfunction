#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/not_hold/slot
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/not_hold/_

#> Slot
    # Slot取得
    execute store result storage reizo_mcfunc_engin:item InThis.Slot int 1 run scoreboard players get $Item.foreach.Slot reizo_mcfunc_Engin.Temp
    # this取得
    data modify storage reizo_mcfunc_engin:item InThis.data set from storage reizo_mcfunc_engin:context this
    # コンポーネントにぶち込む
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/slot.m with storage reizo_mcfunc_engin:item InThis
    # お掃除
    data remove storage reizo_mcfunc_engin:item InThis