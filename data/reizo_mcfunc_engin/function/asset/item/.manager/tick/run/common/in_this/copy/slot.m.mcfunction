#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/copy/slot.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/_

$item modify entity @s container.$(Slot) {function:"set_custom_data",tag:{Item:{this:$(data)}}}