#> reizo_mcfunc_engin:asset/object/.manager/summon/_
#
# 
#
# @within function reizo_mcfunc_engin:api/object/summon.m

# 登録しておく。
function reizo_mcfunc_engin:asset/object/.manager/register/run.m with storage reizo_mcfunc_engin:object

# Registerを退避させる
function reizo_mcfunc_engin:asset/.manager/common/context/register/stash

# 登録処理の親クラス
execute if data storage reizo_mcfunc_engin:object Register.Extends run function reizo_mcfunc_engin:asset/object/.manager/register/extends

# Registerを戻す
function reizo_mcfunc_engin:asset/.manager/common/context/register/pop
data modify storage reizo_mcfunc_engin:object Register set from storage reizo_mcfunc_engin:context Register

# 召喚処理
function reizo_mcfunc_engin:asset/object/.manager/summon/summon

# リセット
data remove storage reizo_mcfunc_engin:object ID
data remove storage reizo_mcfunc_engin:object namespace
data remove storage reizo_mcfunc_engin:object Register
data remove storage reizo_mcfunc_engin:object Field