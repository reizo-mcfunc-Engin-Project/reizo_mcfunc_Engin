#> reizo_mcfunc_engin:asset/item/.manager/context/cache/not_hold/create
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/set_data/init/cache

# データセット
    data modify storage reizo_mcfunc_engin:context Cache.NotHold set value []
    data modify storage reizo_mcfunc_engin:context Register.Extends set from storage reizo_mcfunc_engin:item Register.Extends

# foreach
function reizo_mcfunc_engin:asset/item/.manager/context/cache/not_hold/foreach