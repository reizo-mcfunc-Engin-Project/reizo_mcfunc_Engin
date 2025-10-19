#> reizo_mcfunc_engin:api/extends/foreach.m
#
# 
#
# @api
# @within function reizo_mcfunc_engin:api/extends/foreach.m

# 継承中
data modify storage reizo_mcfunc_engin:api Extends.foreach.Inheriting set value 1b

# まずは[0]のデータを取得
    data modify storage reizo_mcfunc_engin:api Extends.foreach.ID set from storage reizo_mcfunc_engin:api Args.Extends.foreach[0].ID
    data modify storage reizo_mcfunc_engin:api Extends.foreach.namespace set from storage reizo_mcfunc_engin:api Args.Extends.foreach[0].namespace

# なんの関数を実行する?
$function reizo_mcfunc_engin:api/extends/core/foreach/run_func/$(func).m {Type:"$(Type)",namespace:"$(namespace)"}

# 先頭のデータ削除
data remove storage reizo_mcfunc_engin:api Args.Extends.foreach[0]

# お掃除
data remove storage reizo_mcfunc_engin:api Extends.foreach

# 先頭のデータが残るなら再帰
$execute \
if data storage reizo_mcfunc_engin:api Args.Extends.foreach[0] run \
function reizo_mcfunc_engin:api/extends/foreach.m {Type:"$(Type)",namespace:"$(namespace)",func:"$(func)"}