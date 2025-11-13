#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/_

#> Equipment
    # offhand
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.offhand run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/foreach
    # head
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.head run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/head/foreach
    # chest
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.chest run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/foreach
    # legs
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.legs run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/legs/foreach
    # feet
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment.feet run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/feet/foreach