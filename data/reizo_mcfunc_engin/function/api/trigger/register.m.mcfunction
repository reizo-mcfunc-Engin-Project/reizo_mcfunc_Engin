#> reizo_mcfunc_engin:api/trigger/register.m
#
# 
#
# @api

# 現在の追加しようとしているデータがすでに存在しているのなら動作を中断
$execute if data storage reizo_mcfunc_engin:api Trigger.Registry.$(trigger)[{ID:"$(ID)",namespace:"$(namespace)",Type:"$(Type)"}] run return 0

# マクロでターゲットの引数をリストに追加
$data modify storage reizo_mcfunc_engin:api Trigger.Registry.$(trigger) append value {ID:"$(ID)",namespace:"$(namespace)",Type:"$(Type)"}