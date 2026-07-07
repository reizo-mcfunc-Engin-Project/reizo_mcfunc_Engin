#> reizo_mcfunc_engin:api/effect/give.m
#
# Effectを対象のEntityに付与する
#
# @api

# すでにデータが存在する可能性があるため退避
    function reizo_mcfunc_engin:asset/.manager/common/context/args/stash
    function reizo_mcfunc_engin:asset/.manager/common/context/origin_args/stash
    function reizo_mcfunc_engin:asset/.manager/common/context/data/stash
    function reizo_mcfunc_engin:asset/.manager/common/context/this/stash
    function reizo_mcfunc_engin:asset/.manager/common/context/register/stash

# ID設定
$data modify storage reizo_mcfunc_engin:context Args.ID set value "$(ID)"

# namespace設定
$data modify storage reizo_mcfunc_engin:context Args.namespace set value "$(namespace)"

# originセット
data modify storage reizo_mcfunc_engin:context origin_Args set from storage reizo_mcfunc_engin:context Args

# Asset実行
function reizo_mcfunc_engin:asset/effect/.manager/give/_

# 付与処理が終わったため、解放
    function reizo_mcfunc_engin:asset/.manager/common/context/args/pop
    function reizo_mcfunc_engin:asset/.manager/common/context/origin_args/pop
    function reizo_mcfunc_engin:asset/.manager/common/context/data/pop
    function reizo_mcfunc_engin:asset/.manager/common/context/this/pop
    function reizo_mcfunc_engin:asset/.manager/common/context/register/pop