#> reizo_mcfunc_engin:asset/item/.manager/give/_
#
# 
#
# @within function reizo_mcfunc_engin:api/item/give.m

# 登録処理呼び出し
function reizo_mcfunc_engin:asset/item/.manager/register/run.m with storage reizo_mcfunc_engin:item

# RegisterをContextへ
data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:item Register

# 取得処理
function reizo_mcfunc_engin:asset/item/.manager/give/give

# お掃除
data remove storage reizo_mcfunc_engin:item ID
data remove storage reizo_mcfunc_engin:item namespace
data remove storage reizo_mcfunc_engin:item Register
data remove storage reizo_mcfunc_engin:item Field
data remove storage reizo_mcfunc_engin:context Register