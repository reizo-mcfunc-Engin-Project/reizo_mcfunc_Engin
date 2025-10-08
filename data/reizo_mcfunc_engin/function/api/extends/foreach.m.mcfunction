#> reizo_mcfunc_engin:api/extends/foreach.m
#
# 
#
# @api
# @within function reizo_mcfunc_engin:api/extends/foreach.m

# まずは[0]のデータを取得
    data modify storage reizo_mcfunc_engin:api Extends.foreach.ID set from storage reizo_mcfunc_engin:api Args.Extends.foreach[0].ID
    data modify storage reizo_mcfunc_engin:api Extends.foreach.namespace set from storage reizo_mcfunc_engin:api Args.Extends.foreach[0].namespace

# 継承元のregisterを呼び出し
$function $(namespace):asset/$(Type)/.manager/register/run.m with storage reizo_mcfunc_engin:api Extends.foreach

# 継承元のデータ適応
$function $(namespace):asset/$(Type)/.manager/set_data/init/_

# 先頭のデータ削除
data remove storage reizo_mcfunc_engin:api Args.Extends.foreach[0]

# 先頭のデータがまだ残るなら再帰
execute \
if data storage reizo_mcfunc_engin:api Args.Extends.foreach[0] run \
function reizo_mcfunc_engin:api/extends/foreach.m