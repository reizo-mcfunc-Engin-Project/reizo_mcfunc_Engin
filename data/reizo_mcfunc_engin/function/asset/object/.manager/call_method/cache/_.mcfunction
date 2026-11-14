#> reizo_mcfunc_engin:asset/object/.manager/call_method/cache/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/call.m

# データセット
    data modify storage reizo_mcfunc_engin:object Call.Cache.Method set value []
    data modify storage reizo_mcfunc_engin:context Register.Extends set from storage reizo_mcfunc_engin:context data.Registry.Extends
    data modify storage reizo_mcfunc_engin:object Call.Cache.Args.method set from storage reizo_mcfunc_engin:context method

# foreach
function reizo_mcfunc_engin:asset/object/.manager/call_method/cache/foreach