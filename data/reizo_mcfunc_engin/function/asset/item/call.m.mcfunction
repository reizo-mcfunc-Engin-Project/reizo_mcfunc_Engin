#> reizo_mcfunc_engin:asset/item/call.m
#
# 
#
# @within function $(namespace):asset/item/*/**

# 退避
    function reizo_mcfunc_engin:asset/.manager/common/context/args/stash
    function reizo_mcfunc_engin:asset/.manager/common/context/method/stash

# origin_Argsの取得
data modify storage reizo_mcfunc_engin:context Args set from storage reizo_mcfunc_engin:context origin_Args

# Methodの取得
$data modify storage reizo_mcfunc_engin:context method set value "$(method)"

# 実際使うのはこっち
    data modify storage reizo_mcfunc_engin:item Call.Args set from storage reizo_mcfunc_engin:context Args
    data modify storage reizo_mcfunc_engin:item Call.Args.method set from storage reizo_mcfunc_engin:context method

# 実行
function reizo_mcfunc_engin:asset/item/.manager/call_method/_

# お掃除
data remove storage reizo_mcfunc_engin:item Call

# 解放
    function reizo_mcfunc_engin:asset/.manager/common/context/args/pop
    function reizo_mcfunc_engin:asset/.manager/common/context/method/pop