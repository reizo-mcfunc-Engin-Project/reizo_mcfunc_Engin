#> reizo_mcfunc_engin:asset/object/.manager/set_data/tick/extends
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/set_data/tick/_

# Registryコピー
data modify storage reizo_mcfunc_engin:api Args.Extends.foreach set from entity @s data.Registry.Extends
data modify storage reizo_mcfunc_engin:api Args.Extends.foreach.SuperClass_Final set from entity @s data.Registry.SuperClass_Final

# このままだと配列なんで...なんとか分けて実行する。
function reizo_mcfunc_engin:api/extends/foreach.m {Type:"object",namespace:"reizo_mcfunc_engin",func:"tick"}