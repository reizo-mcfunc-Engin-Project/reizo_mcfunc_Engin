#> reizo_mcfunc_engin:asset/object/.manager/summon/_
#
# 
#
# @within function reizo_mcfunc_engin:api/object/summon.m

# 登録しておく。
function reizo_mcfunc_engin:asset/object/.manager/register/run.m with storage reizo_mcfunc_engin:object

# RegisterをContextへ
data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:object Register

# 召喚処理
function reizo_mcfunc_engin:asset/object/.manager/summon/summon

# お掃除
data remove storage reizo_mcfunc_engin:object ID
data remove storage reizo_mcfunc_engin:object namespace
data remove storage reizo_mcfunc_engin:object Register
data remove storage reizo_mcfunc_engin:object Field
data remove storage reizo_mcfunc_engin:context Register