#> reizo_mcfunc_engin:asset/mob/.manager/set_data/tick/extends
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/set_data/tick/_

# Registryコピー
data modify storage reizo_mcfunc_engin:api Args.Extends.foreach set from entity @s data.Registry.Extends

# このままだと配列なんで...なんとか分けて実行する。
function reizo_mcfunc_engin:api/extends/foreach.m {Type:"mob",namespace:"reizo_mcfunc_engin",func:"tick"}