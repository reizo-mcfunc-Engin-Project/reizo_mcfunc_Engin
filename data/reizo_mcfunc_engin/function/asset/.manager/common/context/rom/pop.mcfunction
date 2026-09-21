#> reizo_mcfunc_engin:asset/.manager/common/context/rom/pop
#
# 
#
# @within function reizo_mcfunc_engin:asset/.manager/common/context/rom/stash

data remove storage reizo_mcfunc_engin:context Rom
data modify storage reizo_mcfunc_engin:context Rom set from storage reizo_mcfunc_engin:context RomStackStash[-1].Value
data remove storage reizo_mcfunc_engin:context RomStackStash[-1]