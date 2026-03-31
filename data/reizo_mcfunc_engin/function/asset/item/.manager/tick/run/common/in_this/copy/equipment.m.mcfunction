#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/copy/equipment.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/_

$execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -2 run return run item modify entity @s weapon.offhand {function:"set_custom_data",tag:{Item:{this:$(this)}}}
$execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -3 run return run item modify entity @s armor.head {function:"set_custom_data",tag:{Item:{this:$(this)}}}
$execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -4 run return run item modify entity @s armor.chest {function:"set_custom_data",tag:{Item:{this:$(this)}}}
$execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -5 run return run item modify entity @s armor.legs {function:"set_custom_data",tag:{Item:{this:$(this)}}}
$execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -6 run return run item modify entity @s armor.feet {function:"set_custom_data",tag:{Item:{this:$(this)}}}