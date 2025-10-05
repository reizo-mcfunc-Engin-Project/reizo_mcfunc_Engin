#> reizo_mcfunc_engin:api/extends/set_data/tick/_.m
#
# 
#
# @api

# 継承情報コピー
$data modify storage $(S_namespace):$(Type) CopyExtends set from entity @s data.Registry.Extends

# 継承元の動作を呼び出す
$execute \
if data storage $(S_namespace):$(Type) CopyExtends[0] run \
function reizo_mcfunc_engin:api/extends/set_data/tick/foreach.m {Type:"$(Type)",TYPE:"$(TYPE)",namespace:"$(namespace)"}