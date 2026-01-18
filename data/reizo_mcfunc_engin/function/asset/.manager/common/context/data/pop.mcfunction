#> reizo_mcfunc_engin:asset/.manager/common/context/data/pop
#
# 
#
# @public

data remove storage reizo_mcfunc_engin:context data
data modify storage reizo_mcfunc_engin:context data set from storage reizo_mcfunc_engin:context dataStackStash[-1].Value
data remove storage reizo_mcfunc_engin:context dataStackStash[-1]