#> reizo_mcfunc_engin:asset/effect/.manager/give/_
#
# 
#
# @within function reizo_mcfunc_engin:api/effect/give.m

# 登録処理
function reizo_mcfunc_engin:asset/effect/.manager/register/run.m with storage reizo_mcfunc_engin:context Args

# 継承している場合は、継承元のRegisterを使う
execute if data storage reizo_mcfunc_engin:effect Register.Extends run function reizo_mcfunc_engin:api/extends/_.m {Type:"effect"}

# 付与処理
function reizo_mcfunc_engin:asset/effect/.manager/give/give

# お掃除
    data remove storage reizo_mcfunc_engin:effect Register
    data remove storage reizo_mcfunc_engin:effect Field
    data remove storage reizo_mcfunc_engin:effect Effect
    data remove storage reizo_mcfunc_engin:context Args
    data remove storage reizo_mcfunc_engin:context data
    data remove storage reizo_mcfunc_engin:context Register
    data remove storage reizo_mcfunc_engin:context Effects