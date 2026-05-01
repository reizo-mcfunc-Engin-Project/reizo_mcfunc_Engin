#> reizo_mcfunc_engin:asset/item/0003.migration/tick/migrate/migration/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/0003.migration/tick/migrate/_

# 自分のArgsからboxに新しい自分を入れる
function reizo_mcfunc_engin:api/item/box.m with storage reizo_mcfunc_engin:context origin_Args

# スロットに入れる
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -1 run return run item replace entity @s weapon.mainhand from block 10000 0 10000 container.0
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -2 run return run item replace entity @s weapon.offhand from block 10000 0 10000 container.0
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -3 run return run item replace entity @s armor.head from block 10000 0 10000 container.0
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -4 run return run item replace entity @s armor.chest from block 10000 0 10000 container.0
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -5 run return run item replace entity @s armor.legs from block 10000 0 10000 container.0
    execute if score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -6 run return run item replace entity @s armor.feet from block 10000 0 10000 container.0
    execute store result storage reizo_mcfunc_engin:context this.Migration.Slot int 1 run scoreboard players get $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp
    function reizo_mcfunc_engin:asset/item/0003.migration/tick/migrate/migration/slot.m with storage reizo_mcfunc_engin:context this.Migration