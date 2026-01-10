#> reizo_mcfunc_engin:asset/object/.manager/summon/super
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/summon

# API使用
data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context Register.Extends
data modify storage reizo_mcfunc_engin:api Args.Super.Type set value "object"
data modify storage reizo_mcfunc_engin:api Args.Super.Method set value "summon/_"
function reizo_mcfunc_engin:api/super/_