#> reizo_mcfunc_engin:asset/item/.manager/not_hold/rerun/inventory
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/rerun/inventory

# 先頭取得
data modify storage reizo_mcfunc_engin:item Rerun.Entry set from storage reizo_mcfunc_engin:item Old.Success.NotHold[0]

# 共通処理
function reizo_mcfunc_engin:asset/item/.manager/not_hold/rerun/_common

# 要素の削除
data remove storage reizo_mcfunc_engin:item Old.Success.NotHold[0]

# 要素が残るなら再帰
execute if data storage reizo_mcfunc_engin:item Old.Success.NotHold[0] run function reizo_mcfunc_engin:asset/item/.manager/not_hold/rerun/inventory