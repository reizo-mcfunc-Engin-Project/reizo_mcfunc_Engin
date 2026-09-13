#> reizo_mcfunc_engin:asset/item/.manager/tick/rerun/stash/equipment
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/chest/run/_

# 共通処理
function reizo_mcfunc_engin:asset/item/.manager/tick/rerun/stash/common

# お願いOMD!
function #oh_my_dat:please

# データを入れる
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Old.Success.Equipment.Tick append from storage reizo_mcfunc_engin:item Old.SuccessTemp

# お掃除
data remove storage reizo_mcfunc_engin:item Old.SuccessTemp