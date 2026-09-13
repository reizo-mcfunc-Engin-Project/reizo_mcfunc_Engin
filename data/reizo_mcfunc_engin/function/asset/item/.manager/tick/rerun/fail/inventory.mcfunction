#> reizo_mcfunc_engin:asset/item/.manager/tick/rerun/fail/inventory
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/rerun/inventory

# 先頭削除
data remove storage reizo_mcfunc_engin:item Old.Success.Tick[-1]

# 再帰
execute if data storage reizo_mcfunc_engin:item Old.Success.Tick[-1] run function reizo_mcfunc_engin:asset/item/.manager/tick/rerun/inventory