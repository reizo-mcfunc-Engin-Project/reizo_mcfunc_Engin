#> reizo_mcfunc_engin:api/item/core/put_in/push
#
# 
#
# @within function reizo_mcfunc_engin:api/item/put_in/this

# Slot
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches 0..35 run return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/push/core/not_hold/slot

# SelectedItem
execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -1 run return run item replace block 10000 0 10000 container.0 from entity @s weapon.mainhand

# Equipment
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -2 run return run item replace block 10000 0 10000 container.0 from entity @s weapon.offhand
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -3 run return run item replace block 10000 0 10000 container.0 from entity @s armor.head
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -4 run return run item replace block 10000 0 10000 container.0 from entity @s armor.chest
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -5 run return run item replace block 10000 0 10000 container.0 from entity @s armor.legs
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -6 run return run item replace block 10000 0 10000 container.0 from entity @s armor.feet