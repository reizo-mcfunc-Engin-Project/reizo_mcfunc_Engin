#> reizo_mcfunc_engin:asset/effect/.manager/call_method/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/call.m

# メソッドの実行
function reizo_mcfunc_engin:asset/effect/.manager/call_method/run.m with storage reizo_mcfunc_engin:effect Call.Args

# 子クラスのtickファイルが存在しない場合、親クラスのtickファイルを呼び出す。
    execute unless data storage reizo_mcfunc_engin:effect {Implement:1b} if data storage reizo_mcfunc_engin:context data.Registry.Extends run function reizo_mcfunc_engin:asset/effect/.manager/call_method/call_super_method/_
    data remove storage reizo_mcfunc_engin:effect Implement