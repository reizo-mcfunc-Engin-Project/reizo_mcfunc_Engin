#> reizo_mcfunc_engin:asset/.manager/common/context/cache/pop
#
# 
#
# @public

data remove storage reizo_mcfunc_engin:context Cache
data modify storage reizo_mcfunc_engin:context Cache set from storage reizo_mcfunc_engin:context CacheStackStash[-1].Value
data remove storage reizo_mcfunc_engin:context CacheStackStash[-1]