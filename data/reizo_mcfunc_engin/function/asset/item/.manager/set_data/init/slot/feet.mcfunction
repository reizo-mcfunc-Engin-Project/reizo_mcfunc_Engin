#> reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/feet
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/_

# 数字にして追加
data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Slot append value -6

# 再帰
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/_recursion