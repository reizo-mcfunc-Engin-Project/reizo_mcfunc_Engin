#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/not_hold/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/not_hold

# Inventory
execute if score $Item.foreach.Slot reizo_mcfunc_Engin.Temp matches 0..35 run return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/not_hold/slot

# Equipment
    execute if score $Item.foreach.Slot reizo_mcfunc_Engin.Temp matches -2 run return run item modify entity @s weapon.offhand {function:"copy_custom_data",source:{type:"storage",source:"reizo_mcfunc_engin:context"},ops:[{op:"replace",source:"this",target:"Item.Field"}]}
    execute if score $Item.foreach.Slot reizo_mcfunc_Engin.Temp matches -3 run return run item modify entity @s armor.head {function:"copy_custom_data",source:{type:"storage",source:"reizo_mcfunc_engin:context"},ops:[{op:"replace",source:"this",target:"Item.Field"}]}
    execute if score $Item.foreach.Slot reizo_mcfunc_Engin.Temp matches -4 run return run item modify entity @s armor.chest {function:"copy_custom_data",source:{type:"storage",source:"reizo_mcfunc_engin:context"},ops:[{op:"replace",source:"this",target:"Item.Field"}]}
    execute if score $Item.foreach.Slot reizo_mcfunc_Engin.Temp matches -5 run return run item modify entity @s armor.legs {function:"copy_custom_data",source:{type:"storage",source:"reizo_mcfunc_engin:context"},ops:[{op:"replace",source:"this",target:"Item.Field"}]}
    execute if score $Item.foreach.Slot reizo_mcfunc_Engin.Temp matches -6 run return run item modify entity @s armor.feet {function:"copy_custom_data",source:{type:"storage",source:"reizo_mcfunc_engin:context"},ops:[{op:"replace",source:"this",target:"Item.Field"}]}