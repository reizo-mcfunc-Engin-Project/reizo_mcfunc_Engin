#> reizo_mcfunc_engin:asset/item/.manager/tick/run/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/_

#> Run
    # Invetory
    execute \
    if data storage reizo_mcfunc_engin:item data.Inventory run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/_
    # Equipment
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/_

# お掃除
data remove storage reizo_mcfunc_engin:item data