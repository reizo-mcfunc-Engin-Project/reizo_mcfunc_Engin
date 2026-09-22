#> reizo_mcfunc_engin:asset/item/.manager/tick/rerun/stash/common
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/rerun/stash/equipment

# データを構築
    data modify storage reizo_mcfunc_engin:item Old.SuccessTemp.Args set from storage reizo_mcfunc_engin:context Args
    data modify storage reizo_mcfunc_engin:item Old.SuccessTemp.data set from storage reizo_mcfunc_engin:context data
    data modify storage reizo_mcfunc_engin:item Old.SuccessTemp.this set from storage reizo_mcfunc_engin:context this
    execute store result storage reizo_mcfunc_engin:item Old.SuccessTemp.Slot byte 1 run scoreboard players get $Item.Slot reizo_mcfunc_Engin.Temp