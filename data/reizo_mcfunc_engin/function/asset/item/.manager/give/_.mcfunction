#> reizo_mcfunc_engin:asset/item/.manager/give/_
#
# 
#
# @within function reizo_mcfunc_engin:api/item/give

# 登録処理
function reizo_mcfunc_engin:asset/item/.manager/register/run.m with storage reizo_mcfunc_engin:item

# 取得処理
function reizo_mcfunc_engin:asset/item/.manager/give/give

# リセット
data remove storage reizo_mcfunc_engin:item ID
data remove storage reizo_mcfunc_engin:item namespace
data remove storage reizo_mcfunc_engin:item Register
data remove storage reizo_mcfunc_engin:item Field