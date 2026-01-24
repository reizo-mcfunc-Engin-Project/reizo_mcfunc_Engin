#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/**

# OriginDataの取得
data modify storage reizo_mcfunc_engin:context origin_data set from storage reizo_mcfunc_engin:context data

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run.m with storage reizo_mcfunc_engin:context data

# 子クラスのtickファイルが存在しない場合、親クラスのtickファイルを呼び出す。
execute if data storage reizo_mcfunc_engin:context data.Registry.Extends unless data storage reizo_mcfunc_engin:item {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"tick/_"}

# お掃除
data remove storage reizo_mcfunc_engin:context data
data remove storage reizo_mcfunc_engin:context origin_data
data remove storage reizo_mcfunc_engin:item Implement