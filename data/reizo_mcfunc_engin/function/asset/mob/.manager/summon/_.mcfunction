#> reizo_mcfunc_engin:asset/mob/.manager/summon/_
#
# Mob召喚時の共通処理。
#
# @within function reizo_mcfunc_engin:api/mob/summon.m

# 登録処理
function reizo_mcfunc_engin:asset/mob/.manager/register/run.m with storage reizo_mcfunc_engin:context Args

# 継承している場合は、継承元のRegisterを使う
execute if data storage reizo_mcfunc_engin:item Register.Extends run function reizo_mcfunc_engin:api/extends/_.m {Type:"mob"}

# 召喚処理
function reizo_mcfunc_engin:asset/mob/.manager/summon/summon

# お掃除
    data remove storage reizo_mcfunc_engin:mob Register
    data remove storage reizo_mcfunc_engin:mob Field
    data remove storage reizo_mcfunc_engin:context Args
    data remove storage reizo_mcfunc_engin:context data
    data remove storage reizo_mcfunc_engin:context Register