#> reizo_mcfunc_engin:asset/.manager/common/context/this/stash
#
# 
#
# @public

data modify storage reizo_mcfunc_engin:context thisStackStash append value {}
data modify storage reizo_mcfunc_engin:context thisStackStash[-1].Value set from storage reizo_mcfunc_engin:context this
data remove storage reizo_mcfunc_engin:context this