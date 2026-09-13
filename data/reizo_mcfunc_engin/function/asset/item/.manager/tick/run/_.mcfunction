#> reizo_mcfunc_engin:asset/item/.manager/tick/run/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/_

# お願いOMD!
function #oh_my_dat:please

#> Old系
    # Oldの取得
    data modify storage reizo_mcfunc_engin:item Old set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Old
    # 新しいOldにする
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Old.data set from storage reizo_mcfunc_engin:item data

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
    data remove storage reizo_mcfunc_engin:item NotHold
    data remove storage reizo_mcfunc_engin:item Old