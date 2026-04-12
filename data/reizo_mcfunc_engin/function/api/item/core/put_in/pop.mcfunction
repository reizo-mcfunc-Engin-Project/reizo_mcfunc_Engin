#> reizo_mcfunc_engin:api/item/core/put_in/pop
#
# 
#
# @within function reizo_mcfunc_engin:api/item/put_in/this

# Slot
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches 0..26 run return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/pop/core/not_hold/slot

# SelectedItem
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -1 run return run item replace entity @s weapon.mainhand from block 10000 0 10000 container.0

# Equipment
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -2 run return run item replace entity @s weapon.offhand from block 10000 0 10000 container.0
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -3 run return run item replace entity @s armor.head from block 10000 0 10000 container.0
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -4 run return run item replace entity @s armor.chest from block 10000 0 10000 container.0
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -5 run return run item replace entity @s armor.legs from block 10000 0 10000 container.0
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -6 run return run item replace entity @s armor.feet from block 10000 0 10000 container.0