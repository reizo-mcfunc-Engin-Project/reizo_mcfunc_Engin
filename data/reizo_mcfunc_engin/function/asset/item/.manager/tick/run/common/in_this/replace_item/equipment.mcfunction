#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/replace_item/equipment
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/not_hold

execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -3 run return run item replace entity @s armor.head from block 10000 0 10000 container.0
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -4 run return run item replace entity @s armor.chest from block 10000 0 10000 container.0
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -5 run return run item replace entity @s armor.legs from block 10000 0 10000 container.0
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -6 run return run item replace entity @s armor.feet from block 10000 0 10000 container.0