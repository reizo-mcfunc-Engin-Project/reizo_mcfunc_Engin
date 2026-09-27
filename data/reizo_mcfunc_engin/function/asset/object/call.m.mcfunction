#> reizo_mcfunc_engin:asset/object/call.m
#
# 
#
# @within function $(namespace):asset/object/*/**

# 退避
    function reizo_mcfunc_engin:asset/.manager/common/context/args/stash
    function reizo_mcfunc_engin:asset/.manager/common/context/method/stash

# 空の空間を作成
$data modify storage reizo_mcfunc_engin:context method set value $(method)

# 実行
function reizo_mcfunc_engin:asset/object/.manager/call_method/_

# 解放
    function reizo_mcfunc_engin:asset/.manager/common/context/args/pop
    function reizo_mcfunc_engin:asset/.manager/common/context/method/pop