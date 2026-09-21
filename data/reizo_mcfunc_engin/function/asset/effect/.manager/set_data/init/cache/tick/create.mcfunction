#> reizo_mcfunc_engin:asset/effect/.manager/set_data/init/cache/tick/create
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/set_data/init/cache/_

# データセット
    data modify storage reizo_mcfunc_engin:effect Cache.Tick set value []
    data modify storage reizo_mcfunc_engin:context Register.Extends set from storage reizo_mcfunc_engin:effect Register.Extends

# foreach
function reizo_mcfunc_engin:asset/effect/.manager/set_data/init/cache/tick/foreach