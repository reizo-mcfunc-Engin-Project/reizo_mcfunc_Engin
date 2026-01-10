#> reizo_mcfunc_engin:asset/item/.manager/register/super
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/_

# API使用
data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends
data modify storage reizo_mcfunc_engin:api Args.Super.Type set value "item"
data modify storage reizo_mcfunc_engin:api Args.Super.Method set value "register/_"
function reizo_mcfunc_engin:api/super/_