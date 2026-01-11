#> reizo_mcfunc_engin:asset/mob/.manager/context/register/push
#
# 
#
# @public

# RegisterをcontextのRegisterへと移す。
data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:mob Register

# 元のRegisterはいらない。
data remove storage reizo_mcfunc_engin:mob Register