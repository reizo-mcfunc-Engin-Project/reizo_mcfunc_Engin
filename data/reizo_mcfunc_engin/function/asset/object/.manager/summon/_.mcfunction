#> reizo_mcfunc_engin:asset/object/.manager/summon/_
#
# 
#
# @within function reizo_mcfunc_engin:api/object/summon.m

# 登録しておく。
function reizo_mcfunc_engin:asset/object/.manager/register/run.m with storage reizo_mcfunc_engin:context Args

# 継承している場合は、継承元のRegisterを使う
execute if data storage reizo_mcfunc_engin:item Register.Extends run function reizo_mcfunc_engin:api/extends/_.m {Type:"object"}

# 召喚処理
function reizo_mcfunc_engin:asset/object/.manager/summon/summon

# お掃除
    data remove storage reizo_mcfunc_engin:object Register
    data remove storage reizo_mcfunc_engin:object Field
    data remove storage reizo_mcfunc_engin:context Args
    data remove storage reizo_mcfunc_engin:context data
    data remove storage reizo_mcfunc_engin:context Register