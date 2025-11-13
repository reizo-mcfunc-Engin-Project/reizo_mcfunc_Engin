#> reizo_mcfunc_engin:asset/item/.manager/tick/run/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/_

# TODO: 二つの条件がそろってしまうと(-1,0がどちらとも存在するなど)二つの動作が同Tick内に呼び出されてしまう。

#> Run
    # Invetory
    execute \
    if data storage reizo_mcfunc_engin:item data.Inventory run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/_
    # SelectedItem
    execute \
    if data storage reizo_mcfunc_engin:item data.SelectedItem run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/selected_item/foreach
    # Equipment
    execute \
    if data storage reizo_mcfunc_engin:item data.Equipment run \
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/_

# お掃除
data remove storage reizo_mcfunc_engin:item data