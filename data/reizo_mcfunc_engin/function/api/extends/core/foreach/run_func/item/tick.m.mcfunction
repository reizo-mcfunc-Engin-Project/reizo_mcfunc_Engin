#> reizo_mcfunc_engin:api/extends/core/foreach/run_func/item/tick.m
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/foreach.m

# IDは使えないので、Addrssに移動
data modify storage reizo_mcfunc_engin:api Extends.foreach.Address set from storage reizo_mcfunc_engin:api Extends.foreach.ID

# もうIDはいらない
data remove storage reizo_mcfunc_engin:api Extends.foreach.ID

# 実行
$function $(namespace):asset/$(Type)/.manager/tick/run.m with storage reizo_mcfunc_engin:api Extends.foreach