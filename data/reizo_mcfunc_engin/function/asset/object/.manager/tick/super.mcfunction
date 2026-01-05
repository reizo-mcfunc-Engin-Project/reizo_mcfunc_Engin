#> reizo_mcfunc_engin:asset/object/.manager/tick/super
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/_

# API使用
data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from entity @s data.Registry.Extends
data modify storage reizo_mcfunc_engin:api Args.Super.Type set value "object"
data modify storage reizo_mcfunc_engin:api Args.Super.Method set value "tick/_"
function reizo_mcfunc_engin:api/super/_