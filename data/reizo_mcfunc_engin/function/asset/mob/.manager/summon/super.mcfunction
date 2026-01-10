#> reizo_mcfunc_engin:asset/mob/.manager/summon/super
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/_

# API使用
data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context Register.Extends
data modify storage reizo_mcfunc_engin:api Args.Super.Type set value "mob"
data modify storage reizo_mcfunc_engin:api Args.Super.Method set value "summon/_"
function reizo_mcfunc_engin:api/super/_