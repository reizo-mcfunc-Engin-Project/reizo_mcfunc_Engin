#> reizo_mcfunc_engin:asset/item/.manager/context/register/pull
#
# 
#
# @public

# contextのRegisterをRegisterに移動
data modify storage reizo_mcfunc_engin:item Register set from storage reizo_mcfunc_engin:context Register

# contextのRegisterはいらない。
data remove storage reizo_mcfunc_engin:context Register