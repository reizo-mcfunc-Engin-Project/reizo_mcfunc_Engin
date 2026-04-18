#> reizo_mcfunc_engin:asset/item/.manager/give/_
#
# 
#
# @within function reizo_mcfunc_engin:api/item/give.m

# 登録処理呼び出し
function reizo_mcfunc_engin:asset/item/.manager/register/run.m with storage reizo_mcfunc_engin:context Args

# 継承している場合は、継承元のRegisterを使う
execute if data storage reizo_mcfunc_engin:item Register.Extends run function reizo_mcfunc_engin:api/extends/_.m {Type:"item"}

# 取得処理
function reizo_mcfunc_engin:asset/item/.manager/give/give

# お掃除
    data remove storage reizo_mcfunc_engin:item Register
    data remove storage reizo_mcfunc_engin:item Field
    data remove storage reizo_mcfunc_engin:context Register