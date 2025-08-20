#> reizo_mcfunc_engin:asset/.manager/extends/get_id
#
# 一つずつ分けて実行させる
#
# @api
# @within function
#   reizo_mcfunc_engin:asset/.manager/extends/get_id
#   reizo_mcfunc_engin:asset/*/.manager/register/set_data/extends/_
# @MacroInput
#   Type = EntityType...あ～、既存のじゃなくて、ObjectかMobか...カスタムで出来たやつだよ。

# まずは[0]を入手
$data modify storage reizo_mcfunc_engin:$(Type) Registry.Extends.ID set from storage reizo_mcfunc_engin:$(Type) Registry.CopyExtends.ID[0]

# 継承されているMobのRegisterを呼び出し
$function reizo_mcfunc_engin:asset/$(Type)/.manager/register/run.m with storage reizo_mcfunc_engin:$(Type) Registry.Extends

# 今一番前にいるやつはもういらないよ、さよ～なら～
$data remove storage reizo_mcfunc_engin:$(Type) Registry.CopyExtends.ID[0]

# まだ要素が残っているなら再帰
$execute \
if data storage reizo_mcfunc_engin:$(Type) Registry.CopyExtends.ID[0] run \
function reizo_mcfunc_engin:asset/.manager/extends/get_id