#> reizo_mcfunc_engin:api/item/give
#
# 
#
# @api

# IDとnamespaceを設定
    $data modify storage reizo_mcfunc_engin:item ID set value "$(ID)"
    $data modify storage reizo_mcfunc_engin:item namespace set value "$(namespace)"

# Asset処理起動
function reizo_mcfunc_engin:asset/item/.manager/give/_