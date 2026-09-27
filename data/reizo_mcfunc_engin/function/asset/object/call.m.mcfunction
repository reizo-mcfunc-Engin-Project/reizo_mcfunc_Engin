#> reizo_mcfunc_engin:asset/object/call.m
#
# 
#
# @within function $(namespace):asset/object/*/**

# 退避
    function reizo_mcfunc_engin:asset/.manager/common/context/args/stash
    function reizo_mcfunc_engin:asset/.manager/common/context/method/stash

# origin_Argsの取得
data modify storage reizo_mcfunc_engin:context Args set from storage reizo_mcfunc_engin:context origin_Args

# 空の空間を作成
$data modify storage reizo_mcfunc_engin:context method set value "$(method)"

# 実際使うのはこっち
    data modify storage reizo_mcfunc_engin:object Call.Args set from storage reizo_mcfunc_engin:context Args
    data modify storage reizo_mcfunc_engin:object Call.Args.method set from storage reizo_mcfunc_engin:context method

# 実行
function reizo_mcfunc_engin:asset/object/.manager/call_method/_

# お掃除
data remove storage reizo_mcfunc_engin:object Call

# 解放
    function reizo_mcfunc_engin:asset/.manager/common/context/args/pop
    function reizo_mcfunc_engin:asset/.manager/common/context/method/pop