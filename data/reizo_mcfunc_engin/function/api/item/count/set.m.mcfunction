#> reizo_mcfunc_engin:api/item/count/set.m
#
# アイテムの個数をセットする
#
# @api

# 引数をもらう
    $data modify storage reizo_mcfunc_engin:api Args.Item.Count.Slot set value "$(Slot)"
    $data modify storage reizo_mcfunc_engin:api Args.Item.Count.Value set value "$(Value)"

# 共通処理の実行
function reizo_mcfunc_engin:api/item/core/count/common/_