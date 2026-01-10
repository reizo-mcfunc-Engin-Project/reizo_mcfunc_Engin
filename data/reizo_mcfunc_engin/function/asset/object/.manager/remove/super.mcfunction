#> reizo_mcfunc_engin:asset/object/.manager/remove/super
#
# 
#
# @within function reizo_mcfunc_engin:api/object/remove

# API使用
data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context data.Registry.Extends
data modify storage reizo_mcfunc_engin:api Args.Super.Type set value "object"
data modify storage reizo_mcfunc_engin:api Args.Super.Method set value "remove/_"
function reizo_mcfunc_engin:api/super/_