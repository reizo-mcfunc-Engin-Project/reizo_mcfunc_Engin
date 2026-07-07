#> reizo_mcfunc_engin:asset/.manager/common/context/origin_args/stash
#
# 
#
# @public

data modify storage reizo_mcfunc_engin:context origin_ArgsStackStash append value {}
data modify storage reizo_mcfunc_engin:context origin_ArgsStackStash[-1].Value set from storage reizo_mcfunc_engin:context origin_Args
data remove storage reizo_mcfunc_engin:context origin_Args