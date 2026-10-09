#> reizo_mcfunc_engin:asset/effect/call.m
#
# 
#
# @within function $(namespace):asset/effect/*/**

# 退避
    function reizo_mcfunc_engin:asset/.manager/common/context/args/stash
    function reizo_mcfunc_engin:asset/.manager/common/context/method/stash

# origin_Argsの取得
data modify storage reizo_mcfunc_engin:context Args set from storage reizo_mcfunc_engin:context origin_Args

# Methodの取得
$data modify storage reizo_mcfunc_engin:context method set value "$(method)"

# 実際使うのはこっち
    data modify storage reizo_mcfunc_engin:effect Call.Args set from storage reizo_mcfunc_engin:context Args
    data modify storage reizo_mcfunc_engin:effect Call.Args.method set from storage reizo_mcfunc_engin:context method

# 実行
function reizo_mcfunc_engin:asset/effect/.manager/call_method/_

# お掃除
data remove storage reizo_mcfunc_engin:effect Call

# 解放
    function reizo_mcfunc_engin:asset/.manager/common/context/args/pop
    function reizo_mcfunc_engin:asset/.manager/common/context/method/pop