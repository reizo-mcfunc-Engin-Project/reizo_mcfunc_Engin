#> reizo_mcfunc_engin:asset/object/.manager/context/register/pull
#
# 
#
# @public

# contextのRegisterをRegisterに移動
data modify storage reizo_mcfunc_engin:object Register set from storage reizo_mcfunc_engin:context Register

# contextのRegisterはいらない。
data remove storage reizo_mcfunc_engin:context Register