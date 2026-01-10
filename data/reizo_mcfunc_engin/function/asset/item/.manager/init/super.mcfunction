#> reizo_mcfunc_engin:asset/item/.manager/init/super
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/_

# API使用
data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context data.Registry.Extends
data modify storage reizo_mcfunc_engin:api Args.Super.Type set value "item"
data modify storage reizo_mcfunc_engin:api Args.Super.Method set value "init/_"
function reizo_mcfunc_engin:api/super/_