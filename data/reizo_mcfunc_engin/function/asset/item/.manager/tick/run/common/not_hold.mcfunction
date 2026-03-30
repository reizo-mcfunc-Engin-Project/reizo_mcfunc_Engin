#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/not_hold
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/foreach

# 必要なデータの取得
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/get_data/args
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/get_data/this

# 実行
function reizo_mcfunc_engin:asset/item/.manager/not_hold/run.m with storage reizo_mcfunc_engin:context Args

# 子クラスのtickファイルが存在しない場合、親クラスのtickファイルを呼び出す。
execute if data storage reizo_mcfunc_engin:context data.Registry.Extends unless data storage reizo_mcfunc_engin:item {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"not_hold/_"}

# お掃除
data remove storage reizo_mcfunc_engin:context Args
data remove storage reizo_mcfunc_engin:context origin_Args
data remove storage reizo_mcfunc_engin:item Implement