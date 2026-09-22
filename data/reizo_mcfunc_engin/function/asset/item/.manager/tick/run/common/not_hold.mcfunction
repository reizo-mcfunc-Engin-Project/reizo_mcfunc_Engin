#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/not_hold
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/foreach

# 必要なデータの取得
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/get_data/args
    data modify storage reizo_mcfunc_engin:context this set from storage reizo_mcfunc_engin:context data.Field
    function reizo_mcfunc_engin:asset/item/.manager/context/rom/push

# 実行
function reizo_mcfunc_engin:asset/item/.manager/not_hold/run.m with storage reizo_mcfunc_engin:context Args

# 子クラスのtickファイルが存在しない場合、親クラスのtickファイルを呼び出す。
    execute unless data storage reizo_mcfunc_engin:item {Implement:1b} if data storage reizo_mcfunc_engin:context data.Registry.Extends run function reizo_mcfunc_engin:asset/item/.manager/not_hold/call_super_method/_
    data remove storage reizo_mcfunc_engin:item Implement

# 実行出来たデータを退避させる
function reizo_mcfunc_engin:asset/item/.manager/not_hold/rerun/_stash