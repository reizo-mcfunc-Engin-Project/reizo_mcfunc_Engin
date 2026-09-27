#> reizo_mcfunc_engin:asset/.manager/common/context/method/stash
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/call_method/_

data modify storage reizo_mcfunc_engin:context methodStackStash append value {}
data modify storage reizo_mcfunc_engin:context methodStackStash[-1].Value set from storage reizo_mcfunc_engin:context method
data remove storage reizo_mcfunc_engin:context method