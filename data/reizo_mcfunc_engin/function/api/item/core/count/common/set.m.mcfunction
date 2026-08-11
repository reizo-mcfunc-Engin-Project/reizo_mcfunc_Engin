#> reizo_mcfunc_engin:api/item/core/count/common/set.m
#
# 
#
# @within function reizo_mcfunc_engin:api/item/count/set.m

$item modify entity @s $(SlotType).$(Slot) {function:"set_count",count:$(Value)}