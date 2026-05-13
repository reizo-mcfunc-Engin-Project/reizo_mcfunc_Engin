#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/in_this/slot.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/inventory/slot/run/_

$item modify entity @s container.$(Slot) {function:"copy_custom_data",source:{type:"storage",source:"reizo_mcfunc_engin:context"},ops:[{op:"replace",source:"this",target:"Item.Field"}]}