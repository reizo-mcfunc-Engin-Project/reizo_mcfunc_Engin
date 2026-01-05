#> reizo_mcfunc_engin:asset/mob/.manager/summon/_
#
# Mob召喚時の共通処理。
#
# @within function reizo_mcfunc_engin:api/mob/summon.m

# 登録処理
function reizo_mcfunc_engin:asset/mob/.manager/register/run.m with storage reizo_mcfunc_engin:mob

# Registerの退避
function reizo_mcfunc_engin:asset/.manager/common/context/register/stash

# 登録処理の親クラス
execute if data storage reizo_mcfunc_engin:mob Register.Extends run function reizo_mcfunc_engin:asset/mob/.manager/register/extends

# Registerを戻す
function reizo_mcfunc_engin:asset/.manager/common/context/register/pop
data modify storage reizo_mcfunc_engin:mob Register set from storage reizo_mcfunc_engin:context Register

# 召喚処理
function reizo_mcfunc_engin:asset/mob/.manager/summon/summon

# リセット
data remove storage reizo_mcfunc_engin:mob ID
data remove storage reizo_mcfunc_engin:mob namespace
data remove storage reizo_mcfunc_engin:mob Register
data remove storage reizo_mcfunc_engin:mob Field