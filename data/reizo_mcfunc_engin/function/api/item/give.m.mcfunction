#> reizo_mcfunc_engin:api/item/give.m
#
# Itemを取得するAPI
#
# @api

# 退避
function reizo_mcfunc_engin:asset/.manager/common/context/data/stash

# IDとnamespaceを設定
    $data modify storage reizo_mcfunc_engin:item ID set value "$(ID)"
    $data modify storage reizo_mcfunc_engin:item namespace set value "$(namespace)"

# Asset処理起動
function reizo_mcfunc_engin:asset/item/.manager/give/_

# 解放
function reizo_mcfunc_engin:asset/.manager/common/context/data/pop