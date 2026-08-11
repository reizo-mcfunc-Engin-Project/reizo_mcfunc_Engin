#> reizo_mcfunc_engin:asset/.manager/common/context/origin_args/pop
#
# 
#
# @public

data remove storage reizo_mcfunc_engin:context origin_Args
data modify storage reizo_mcfunc_engin:context origin_Args set from storage reizo_mcfunc_engin:context origin_ArgsStackStash[-1].Value
data remove storage reizo_mcfunc_engin:context origin_ArgsStackStash[-1]