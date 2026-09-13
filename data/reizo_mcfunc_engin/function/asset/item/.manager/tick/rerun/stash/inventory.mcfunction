#> reizo_mcfunc_engin:asset/item/.manager/tick/rerun/stash/inventory
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/_

# 共通処理
function reizo_mcfunc_engin:asset/item/.manager/tick/rerun/stash/common

# お願いOMD!
function #oh_my_dat:please

# データを入れる
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Old.Success.Inventory.Tick append from storage reizo_mcfunc_engin:item Old.SuccessTemp

# お掃除
data remove storage reizo_mcfunc_engin:item Old.SuccessTemp