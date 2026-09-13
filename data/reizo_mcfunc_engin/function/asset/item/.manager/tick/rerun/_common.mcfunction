#> reizo_mcfunc_engin:asset/item/.manager/tick/rerun/_common
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/rerun/inventory

# データ取得
    data modify storage reizo_mcfunc_engin:context Args set from storage reizo_mcfunc_engin:item Rerun.Entry.Args
    data modify storage reizo_mcfunc_engin:context origin_Args set from storage reizo_mcfunc_engin:context Args
    data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:item Rerun.Entry.data
    data modify storage reizo_mcfunc_engin:context this set from storage reizo_mcfunc_engin:item Rerun.Entry.this
    data modify storage reizo_mcfunc_engin:context Cache set from storage reizo_mcfunc_engin:item Rerun.Entry.Cache

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run.m with storage reizo_mcfunc_engin:context Args

# 子クラスのtickファイルが存在しない場合、親クラスのtickファイルを呼び出す。
    execute unless data storage reizo_mcfunc_engin:item {Implement:1b} if data storage reizo_mcfunc_engin:context data.Registry.Extends run function reizo_mcfunc_engin:asset/item/.manager/tick/call_super_method/_
    data remove storage reizo_mcfunc_engin:item Implement

# お掃除
    data remove storage reizo_mcfunc_engin:context Cache
    scoreboard players reset $Item.Slot reizo_mcfunc_Engin.Temp