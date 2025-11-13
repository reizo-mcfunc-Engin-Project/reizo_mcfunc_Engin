#> reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/legs/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/_

# 先頭取得
execute \
store result score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp run \
data get storage reizo_mcfunc_engin:item data.Equipment.legs.components."minecraft:custom_data".Item.Registry.Slot[0]

# -2以外なら再帰
execute \
unless score $Item.foreach.RunSlot reizo_mcfunc_Engin.Temp matches -2 run \
return run function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/legs/recursion

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run/equipment/legs/run