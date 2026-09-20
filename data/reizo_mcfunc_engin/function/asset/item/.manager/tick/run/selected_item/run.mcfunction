#> reizo_mcfunc_engin:asset/item/.manager/tick/run/selected_item/run
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/selected_item/check.m

# スコアをセットする
scoreboard players set $Item.Slot reizo_mcfunc_Engin.Temp -1

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_

# thisを入れる
item modify entity @s weapon.mainhand {function:"copy_custom_data",source:{type:"storage",source:"reizo_mcfunc_engin:context"},ops:[{op:"replace",source:"this",target:"Item.Field"}]}