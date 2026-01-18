#> reizo_mcfunc_engin:asset/.manager/common/context/data/stash
#
# 
#
# @public

data modify storage reizo_mcfunc_engin:context dataStackStash append value {}
data modify storage reizo_mcfunc_engin:context dataStackStash[-1].Value set from storage reizo_mcfunc_engin:context data
data remove storage reizo_mcfunc_engin:context data