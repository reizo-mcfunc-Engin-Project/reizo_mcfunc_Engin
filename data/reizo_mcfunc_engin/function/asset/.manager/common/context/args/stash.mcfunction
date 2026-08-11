#> reizo_mcfunc_engin:asset/.manager/common/context/args/stash
#
# 
#
# @public

data modify storage reizo_mcfunc_engin:context ArgsStackStash append value {}
data modify storage reizo_mcfunc_engin:context ArgsStackStash[-1].Value set from storage reizo_mcfunc_engin:context Args
data remove storage reizo_mcfunc_engin:context Args