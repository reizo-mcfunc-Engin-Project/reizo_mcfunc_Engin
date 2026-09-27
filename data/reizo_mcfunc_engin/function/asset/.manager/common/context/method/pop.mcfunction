#> reizo_mcfunc_engin:asset/.manager/common/context/method/pop
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/call.m

data remove storage reizo_mcfunc_engin:context method
data modify storage reizo_mcfunc_engin:context method set from storage reizo_mcfunc_engin:context methodStackStash[-1].Value
data remove storage reizo_mcfunc_engin:context methodStackStash[-1]