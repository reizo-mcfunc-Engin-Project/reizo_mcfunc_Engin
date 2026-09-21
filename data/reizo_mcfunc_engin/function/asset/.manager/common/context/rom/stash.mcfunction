#> reizo_mcfunc_engin:asset/.manager/common/context/rom/stash
#
# 
#
# @public

data remove storage reizo_mcfunc_engin:context Rom
data modify storage reizo_mcfunc_engin:context Rom set from storage reizo_mcfunc_engin:context RomStackStash[-1].Value
data remove storage reizo_mcfunc_engin:context RomStackStash[-1]