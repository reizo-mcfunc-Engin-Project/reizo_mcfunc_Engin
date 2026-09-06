#> reizo_mcfunc_engin:asset/mob/.manager/set_data/init/equipments
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/set_data/init/_

#> 装備だ！
    # Head
    execute \
    if data storage reizo_mcfunc_engin:mob Register.Head run \
    data modify entity @s equipment.head set from storage reizo_mcfunc_engin:mob Register.Head
    # Chest
    execute \
    if data storage reizo_mcfunc_engin:mob Register.Chest run \
    data modify entity @s equipment.chest set from storage reizo_mcfunc_engin:mob Register.Chest
    # Legs
    execute \
    if data storage reizo_mcfunc_engin:mob Register.Legs run \
    data modify entity @s equipment.legs set from storage reizo_mcfunc_engin:mob Register.Legs
    # Feet
    execute \
    if data storage reizo_mcfunc_engin:mob Register.Feet run \
    data modify entity @s equipment.feet set from storage reizo_mcfunc_engin:mob Register.Feet
    # main_hand
    execute \
    if data storage reizo_mcfunc_engin:mob Register.main_hand run \
    data modify entity @s equipment.mainhand set from storage reizo_mcfunc_engin:mob Register.main_hand
    # off_hand
    execute \
    if data storage reizo_mcfunc_engin:mob Register.off_hand run \
    data modify entity @s equipment.offhand set from storage reizo_mcfunc_engin:mob Register.off_hand