#> reizo_mcfunc_engin:asset/.manager/common/context/register/pop
#
# 
#
# @public

data remove storage reizo_mcfunc_engin:context Register
data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value
data remove storage reizo_mcfunc_engin:context RegisterStackStash[-1]