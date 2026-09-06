#> reizo_mcfunc_engin:asset/.manager/common/context/cache/stash
#
# 
#
# @public

data modify storage reizo_mcfunc_engin:context CacheStackStash append value {}
data modify storage reizo_mcfunc_engin:context CacheStackStash[-1].Value set from storage reizo_mcfunc_engin:context Cache
data remove storage reizo_mcfunc_engin:context Cache