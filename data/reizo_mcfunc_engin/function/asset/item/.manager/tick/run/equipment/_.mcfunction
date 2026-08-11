#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/_

#> Equipment
    # offhand
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.offhand run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/_
    # head
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.head run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/head/_
    # chest
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.chest run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/_
    # legs
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.legs run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/legs/_
    # feet
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.feet run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/feet/_