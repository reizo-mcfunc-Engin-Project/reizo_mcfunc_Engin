#> reizo_mcfunc_engin:asset/item/.manager/give/super
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/give/give

# API使用
data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context Register.Extends
data modify storage reizo_mcfunc_engin:api Args.Super.Type set value "item"
data modify storage reizo_mcfunc_engin:api Args.Super.Method set value "give/_"
function reizo_mcfunc_engin:api/super/_