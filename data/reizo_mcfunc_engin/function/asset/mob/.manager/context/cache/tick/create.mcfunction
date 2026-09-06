#> reizo_mcfunc_engin:asset/mob/.manager/context/cache/tick/create
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/set_data/init/cache

# データセット
    data modify storage reizo_mcfunc_engin:context Cache.Tick set value []
    data modify storage reizo_mcfunc_engin:context Register.Extends set from storage reizo_mcfunc_engin:mob Register.Extends

# foreach
function reizo_mcfunc_engin:asset/mob/.manager/context/cache/tick/foreach