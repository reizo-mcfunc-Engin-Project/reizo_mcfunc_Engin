#> reizo_mcfunc_engin:asset/item/.manager/tick/rerun/stash/inventory
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/_

#> 退避
    # お願いOMD!
    function #oh_my_dat:please
    # データを追加
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Old.Success.Inventory.Tick append value {}
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Old.Success.Inventory.Tick[-1].Args set from storage reizo_mcfunc_engin:context Args
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Old.Success.Inventory.Tick[-1].data set from storage reizo_mcfunc_engin:context data
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Old.Success.Inventory.Tick[-1].this set from storage reizo_mcfunc_engin:context this
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Old.Success.Inventory.Tick[-1].Cache set from storage reizo_mcfunc_engin:context Cache
        execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Old.Success.Inventory.Tick[-1].Slot byte 1 run scoreboard players get $Item.Slot reizo_mcfunc_Engin.Temp