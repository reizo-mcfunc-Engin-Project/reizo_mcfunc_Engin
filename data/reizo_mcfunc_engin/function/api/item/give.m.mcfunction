#> reizo_mcfunc_engin:api/item/give.m
#
# Itemを取得するAPI
#
# @api

# 退避
    function reizo_mcfunc_engin:asset/.manager/common/context/args/stash
    function reizo_mcfunc_engin:asset/.manager/common/context/data/stash
    function reizo_mcfunc_engin:asset/.manager/common/context/this/stash
    function reizo_mcfunc_engin:asset/.manager/common/context/register/stash

# IDとnamespaceを設定
    $data modify storage reizo_mcfunc_engin:context Args.ID set value "$(ID)"
    $data modify storage reizo_mcfunc_engin:context Args.namespace set value "$(namespace)"

# Asset処理起動
function reizo_mcfunc_engin:asset/item/.manager/give/_

# 解放
    function reizo_mcfunc_engin:asset/.manager/common/context/args/pop
    function reizo_mcfunc_engin:asset/.manager/common/context/data/pop
    function reizo_mcfunc_engin:asset/.manager/common/context/this/pop
    function reizo_mcfunc_engin:asset/.manager/common/context/register/pop