#> reizo_mcfunc_engin:asset/.manager/common/context/args/pop
#
# 
#
# @public

data remove storage reizo_mcfunc_engin:context Args
data modify storage reizo_mcfunc_engin:context Args set from storage reizo_mcfunc_engin:context ArgsStackStash[-1].Value
data remove storage reizo_mcfunc_engin:context ArgsStackStash[-1]