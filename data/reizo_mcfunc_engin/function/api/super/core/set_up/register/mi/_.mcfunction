#> reizo_mcfunc_engin:api/super/core/set_up/register/mi/_
#
# 
#
# @within function reizo_mcfunc_engin:api/super/core/set_up/register/_

# 移動
data modify storage reizo_mcfunc_engin:api Super.SetUp.Register.MI set from storage reizo_mcfunc_engin:context Register.Extends
tellraw @a {"storage":"reizo_mcfunc_engin:api",nbt:"Super.SetUp.Register.MI"}
# 分けておく
function reizo_mcfunc_engin:api/super/core/set_up/register/mi/foreach