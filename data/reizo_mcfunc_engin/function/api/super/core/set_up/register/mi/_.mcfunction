#> reizo_mcfunc_engin:api/super/core/set_up/register/mi/_
#
# 
#
# @within function reizo_mcfunc_engin:api/super/core/set_up/register/run.m

data modify storage reizo_mcfunc_engin:api Args.Super[-1].Value.Extends[].IsFirstExtend._ set value 0b
function reizo_mcfunc_engin:api/super/core/set_up/register/mi/foreach
data modify storage reizo_mcfunc_engin:api Args.Super[-1].Value.Extends prepend value "empty"