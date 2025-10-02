#> reizo_mcfunc_engin:api/extends/get_id.m
#
# 
#
# @api
# @within function reizo_mcfunc_engin:api/extends/get_id.m

# まずは[0]を入手
$data modify storage $(S_namespace):$(Type) Extends.ID set from storage $(S_namespace):$(Type) Registry.CopyExtends.ID[0]

# 継承されているMobのRegisterを呼び出し
$function $(namespace):asset/$(Type)/.manager/register/run.m with storage $(S_namespace):$(Type) Extends

# 継承元のデータ適応
$function $(namespace):asset/$(Type)/.manager/set_data/init/_

# 今一番前にいるやつはもういらないよ、さよ～なら～
$data remove storage $(S_namespace):$(Type) Registry.CopyExtends.ID[0]

# まだ要素が残っているなら再帰
$execute \
if data storage $(S_namespace):$(Type) Registry.CopyExtends.ID[0] run \
function reizo_mcfunc_engin:asset/.manager/extends/get_id.m