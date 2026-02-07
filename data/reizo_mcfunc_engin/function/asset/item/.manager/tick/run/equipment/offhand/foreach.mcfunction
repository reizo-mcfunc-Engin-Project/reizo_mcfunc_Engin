#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/foreach
#
# 
#
# @within function
#    reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/_
#    reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/recursion

# 先頭取得
execute \
store result score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp run \
data get storage reizo_mcfunc_engin:item data.Equipment.offhand.components."minecraft:custom_data".Item.Registry.Slot[0]

# -2以外なら再帰
execute \
unless score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -2 run \
return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/recursion

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/offhand/run/_