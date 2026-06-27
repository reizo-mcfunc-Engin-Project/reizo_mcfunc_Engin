#> reizo_mcfunc_engin:asset/effect/.manager/context/register/pull
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/init/_

# contextのRegisterをRegisterに移動
data modify storage reizo_mcfunc_engin:effect Register set from storage reizo_mcfunc_engin:context Register

# contextのRegisterはいらない。
data remove storage reizo_mcfunc_engin:context Register