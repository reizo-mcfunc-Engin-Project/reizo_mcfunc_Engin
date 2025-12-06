#> reizo_mcfunc_engin:api/item/del.m
#
# アイテムの消去
#
# @api

# 引数をもらう
$data modify storage reizo_mcfunc_engin:api Item.Del.Slot set value "$(Slot)"

# Init処理
function reizo_mcfunc_engin:api/item/core/del/init/_

# キャンセル処理
execute \
if data storage reizo_mcfunc_engin:api Item.Del{Done:0b} run \
return run function reizo_mcfunc_engin:api/item/core/del/cancel

# 引数でもらった値分減らす。
$execute \
store result storage reizo_mcfunc_engin:api Item.Del.Count int 1 run \
scoreboard players remove $Item.Del.Count reizo_mcfunc_Engin.Temp $(Count)

# 個数反映
function reizo_mcfunc_engin:api/item/core/del/set_count.m with storage reizo_mcfunc_engin:api Item.Del

# お掃除
function reizo_mcfunc_engin:api/item/core/del/reset