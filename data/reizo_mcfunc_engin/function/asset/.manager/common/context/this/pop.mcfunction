#> reizo_mcfunc_engin:asset/.manager/common/context/this/pop
#
# 
#
# @public

data remove storage reizo_mcfunc_engin:context this
data modify storage reizo_mcfunc_engin:context this set from storage reizo_mcfunc_engin:context thisStackStash[-1].Value
data remove storage reizo_mcfunc_engin:context thisStackStash[-1]