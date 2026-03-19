#> reizo_mcfunc_engin:asset/mob/.manager/summon/_
#
# Mob召喚時の共通処理。
#
# @within function reizo_mcfunc_engin:api/mob/summon.m

# 登録処理
function reizo_mcfunc_engin:asset/mob/.manager/register/run.m with storage reizo_mcfunc_engin:context Args

# 召喚処理
function reizo_mcfunc_engin:asset/mob/.manager/summon/summon

# リセット
data remove storage reizo_mcfunc_engin:context Args.ID
data remove storage reizo_mcfunc_engin:context Args.namespace
data remove storage reizo_mcfunc_engin:mob Register
data remove storage reizo_mcfunc_engin:mob Field
data remove storage reizo_mcfunc_engin:context Register