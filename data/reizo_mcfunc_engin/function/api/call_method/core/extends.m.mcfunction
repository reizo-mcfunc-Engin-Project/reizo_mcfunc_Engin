#> reizo_mcfunc_engin:api/call_method/core/extends.m
#
# 
#
# @within function reizo_mcfunc_engin:api/call_method/_.m

# API用変数に値をコピー
    data modify storage reizo_mcfunc_engin:api Args.Extends.foreach set from entity @s data.Registry.Extends
    data modify storage reizo_mcfunc_engin:api Args.Extends.foreach.SuperClass_Final set from entity @s data.Registry.SuperClass_Final

# API実行
$function reizo_mcfunc_engin:api/extends/foreach.m {Type:"$(Type)",namespace:"$(namespace)",func:"call_method"}