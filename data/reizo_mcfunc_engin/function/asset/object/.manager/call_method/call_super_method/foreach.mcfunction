#> reizo_mcfunc_engin:asset/object/.manager/call_method/call_super_method/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/call_method/call_super_method/_

# Args取得
data modify storage reizo_mcfunc_engin:context Args set from storage reizo_mcfunc_engin:object CopiedExtends[-1][0]

# 実際使うのはこっち
    data modify storage reizo_mcfunc_engin:object Call.Args set from storage reizo_mcfunc_engin:context Args
    data modify storage reizo_mcfunc_engin:object Call.Args.method set from storage reizo_mcfunc_engin:context method

# 呼び出し
function reizo_mcfunc_engin:asset/object/.manager/call_method/run.m with storage reizo_mcfunc_engin:object Call.Args

# お掃除
data remove storage reizo_mcfunc_engin:object CopiedExtends[-1][0]

# 要素が残っていれば再帰
execute if data storage reizo_mcfunc_engin:object CopiedExtends[-1][0] run function reizo_mcfunc_engin:asset/object/.manager/call_method/call_super_method/foreach