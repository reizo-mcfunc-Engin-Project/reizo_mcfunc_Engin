#> reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/_recursion
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/*

# お掃除
data remove storage reizo_mcfunc_engin:item Registry.Slot.Top
data remove storage reizo_mcfunc_engin:item Register.Slot[0]

# 先頭が残るなら再帰
execute \
if data storage reizo_mcfunc_engin:item Register.Slot[0] run \
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/slot/_