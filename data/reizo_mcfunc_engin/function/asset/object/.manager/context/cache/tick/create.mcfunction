#> reizo_mcfunc_engin:asset/object/.manager/context/cache/tick/create
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/set_data/init/cache

# データセット
    data modify storage reizo_mcfunc_engin:context Cache.Tick set value []
    data modify storage reizo_mcfunc_engin:context Register.Extends set from storage reizo_mcfunc_engin:object Register.Extends

# foreach
function reizo_mcfunc_engin:asset/object/.manager/context/cache/tick/foreach