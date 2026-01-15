#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/**

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run.m with storage reizo_mcfunc_engin:context data

# 子クラスのtickファイルが存在しない場合、親クラスのtickファイルを呼び出す。
execute if data storage reizo_mcfunc_engin:context data.Registry.Extends unless data storage reizo_mcfunc_engin:item {Implement:1b} run function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/super

# お掃除
data remove storage reizo_mcfunc_engin:context data
data remove storage reizo_mcfunc_engin:item Implement