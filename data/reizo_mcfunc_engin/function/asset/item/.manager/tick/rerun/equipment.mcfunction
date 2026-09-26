#> reizo_mcfunc_engin:asset/item/.manager/tick/rerun/equipment
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/_

# 先頭取得
data modify storage reizo_mcfunc_engin:item Rerun.Entry set from storage reizo_mcfunc_engin:item Old.Success.Equipment.Tick[0]

# 共通処理
function reizo_mcfunc_engin:asset/item/.manager/tick/rerun/_common

# 要素の削除
data remove storage reizo_mcfunc_engin:item Old.Success.Equipment.Tick[0]

#> thisを入れる
    execute if score $Item.Slot reizo_mcfunc_Engin.Temp matches -2 run item modify entity @s weapon.offhand {function:"copy_custom_data",source:{type:"storage",source:"reizo_mcfunc_engin:context"},ops:[{op:"replace",source:"this",target:"Item.Field"}]}
    execute if score $Item.Slot reizo_mcfunc_Engin.Temp matches -3 run item modify entity @s armor.head {function:"copy_custom_data",source:{type:"storage",source:"reizo_mcfunc_engin:context"},ops:[{op:"replace",source:"this",target:"Item.Field"}]}
    execute if score $Item.Slot reizo_mcfunc_Engin.Temp matches -4 run item modify entity @s armor.chest {function:"copy_custom_data",source:{type:"storage",source:"reizo_mcfunc_engin:context"},ops:[{op:"replace",source:"this",target:"Item.Field"}]}
    execute if score $Item.Slot reizo_mcfunc_Engin.Temp matches -5 run item modify entity @s armor.legs {function:"copy_custom_data",source:{type:"storage",source:"reizo_mcfunc_engin:context"},ops:[{op:"replace",source:"this",target:"Item.Field"}]}
    execute if score $Item.Slot reizo_mcfunc_Engin.Temp matches -6 run item modify entity @s armor.feet {function:"copy_custom_data",source:{type:"storage",source:"reizo_mcfunc_engin:context"},ops:[{op:"replace",source:"this",target:"Item.Field"}]}

# お掃除
scoreboard players reset $Item.Slot reizo_mcfunc_Engin.Temp

# 要素が残るなら再帰
execute if data storage reizo_mcfunc_engin:item Old.Success.Equipment.Tick[0] run return run function reizo_mcfunc_engin:asset/item/.manager/tick/rerun/equipment

# NotHoldもあるなら実行
execute if data storage reizo_mcfunc_engin:item Old.Success.NotHold[0] run function reizo_mcfunc_engin:asset/item/.manager/not_hold/rerun/_