#> reizo_mcfunc_engin:asset/effect/.manager/context/register/push
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/init/_

# RegisterをcontextのRegisterへと移す。
data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:effect Register

# 元のRegisterはいらない。
data remove storage reizo_mcfunc_engin:effect Register