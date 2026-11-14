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

# キャッシュが無ければキャッシュの作成をしておく
    $execute if data storage reizo_mcfunc_engin:context data.Registry.Extends unless data storage reizo_mcfunc_engin:context Rom.Cache.Method.$(method)[0] run function reizo_mcfunc_engin:asset/item/.manager/call_method/cache/_
    $execute unless data storage reizo_mcfunc_engin:context Rom.Cache.Method.$(method)[0] run data modify storage reizo_mcfunc_engin:context Rom.Cache.Method.$(method) set from storage reizo_mcfunc_engin:item Call.Cache.Method

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