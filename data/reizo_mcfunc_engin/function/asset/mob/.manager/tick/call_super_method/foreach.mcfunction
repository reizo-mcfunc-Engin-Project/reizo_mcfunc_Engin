#> reizo_mcfunc_engin:asset/mob/.manager/tick/call_super_method/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/call_super_method/_

# Args取得
data modify storage reizo_mcfunc_engin:context Args set from storage reizo_mcfunc_engin:mob CopiedExtends[-1][0]

# 呼び出し
function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m with storage reizo_mcfunc_engin:context Args

# お掃除
data remove storage reizo_mcfunc_engin:mob CopiedExtends[-1][0]

# 要素が残っていれば再帰
execute if data storage reizo_mcfunc_engin:mob CopiedExtends[-1][0] run function reizo_mcfunc_engin:asset/mob/.manager/tick/call_super_method/foreach