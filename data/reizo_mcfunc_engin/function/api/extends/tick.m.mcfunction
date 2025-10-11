#> reizo_mcfunc_engin:api/extends/tick.m
#
# 
#
# @api

# 継承情報コピー
data modify storage reizo_mcfunc_engin:api Extends.tick.CopyExtends set from entity @s data.Registry.Extends

# 継承元の動作を呼び出す
$function reizo_mcfunc_engin:api/extends/core/tick/foreach.m {Type:"$(Type)",namespace:"$(namespace)"}