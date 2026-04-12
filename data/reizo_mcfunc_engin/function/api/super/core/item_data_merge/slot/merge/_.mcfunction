#> reizo_mcfunc_engin:api/super/core/item_data_merge/slot/merge/_
#
# 
#
# @within function reizo_mcfunc_engin:api/super/core/item_data_merge/_

# スロット取得
execute store result storage reizo_mcfunc_engin:api Super.ItemDataMerge.Slot int 1 run scoreboard players get $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp

# マクロでデータをマージする
function reizo_mcfunc_engin:api/super/core/item_data_merge/slot/merge/_.m with storage reizo_mcfunc_engin:api Super.ItemDataMerge.Slot

# お掃除
data remove storage reizo_mcfunc_engin:api Super.ItemDataMerge