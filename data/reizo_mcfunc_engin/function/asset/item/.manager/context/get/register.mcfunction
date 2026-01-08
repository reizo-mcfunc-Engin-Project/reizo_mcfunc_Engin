#> reizo_mcfunc_engin:asset/item/.manager/context/get/register
#
# 
#
# @public

# RegisterをcontextのRegisterへと移す。
data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:item Register

# 元のRegisterはいらない。
data remove storage reizo_mcfunc_engin:item Register