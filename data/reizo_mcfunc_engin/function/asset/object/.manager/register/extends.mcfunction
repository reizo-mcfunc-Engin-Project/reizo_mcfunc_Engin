#> reizo_mcfunc_engin:asset/object/.manager/register/extends
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/_

# API使用
data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends
data modify storage reizo_mcfunc_engin:api Args.Super.Type set value "object"
data modify storage reizo_mcfunc_engin:api Args.Super.Method set value "register/_"
function reizo_mcfunc_engin:api/super/_