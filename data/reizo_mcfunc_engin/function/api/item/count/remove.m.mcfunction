#> reizo_mcfunc_engin:api/item/count/remove.m
#
# アイテムの個数を指定した値分removeする。
#
# @api

# 引数をもらう
$data modify storage reizo_mcfunc_engin:api Args.Item.Count.Slot set value "$(Slot)"

# 現在のCountを取得
function reizo_mcfunc_engin:api/item/core/count/common/get_count/_

# 現在のCountから指定した値分減らす
    # 現在の個数値を一時的にスコアに
    execute store result score $API.Item.Count reizo_mcfunc_Engin.Temp run data get storage reizo_mcfunc_engin:api Args.Item.Count.Value
    # 引数分減らしてストレージに保存
    $execute store result storage reizo_mcfunc_engin:api Args.Item.Count.Value int 1 run scoreboard players remove $API.Item.Count reizo_mcfunc_Engin.Temp $(Value)
    # お掃除
    scoreboard players reset $API.Item.Count

# 共通処理の実行
function reizo_mcfunc_engin:api/item/core/count/common/_