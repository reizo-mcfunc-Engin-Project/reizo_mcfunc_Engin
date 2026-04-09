#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/push/core/not_hold/slot
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/push/not_hold

# Slot
    execute store result storage reizo_mcfunc_engin:item InThis.Args.Slot int 1 run scoreboard players get $Item.foreach.Slot reizo_mcfunc_Engin.Temp
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/push/slot.m with storage reizo_mcfunc_engin:item InThis.Args