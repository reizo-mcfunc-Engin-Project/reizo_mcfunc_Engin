#> reizo_mcfunc_engin:asset/item/.manager/give/_
#
# 
#
# @within function reizo_mcfunc_engin:api/item/give.m

# 登録処理呼び出し
function reizo_mcfunc_engin:asset/item/.manager/register/run.m with storage reizo_mcfunc_engin:context Args

# 継承している場合は、継承元のRegisterを使う。
# ここでFieldを消しているのは、自分のFieldの配列に追加を行うものが存在した場合、Extends内でもう一度自分の登録処理を呼び出すため、もう一度配列に値が追加されてしまうためである。
    execute if data storage reizo_mcfunc_engin:item Register.Extends run data remove storage reizo_mcfunc_engin:item Field
    execute if data storage reizo_mcfunc_engin:item Register.Extends run function reizo_mcfunc_engin:api/extends/_.m {Type:"item"}

# 取得処理
function reizo_mcfunc_engin:asset/item/.manager/give/give

# お掃除
    data remove storage reizo_mcfunc_engin:item Register
    data remove storage reizo_mcfunc_engin:item Field
    data remove storage reizo_mcfunc_engin:context Args
    data remove storage reizo_mcfunc_engin:context origin_Args
    data remove storage reizo_mcfunc_engin:context data
    data remove storage reizo_mcfunc_engin:context Register