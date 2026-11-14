#> reizo_mcfunc_engin:asset/mob/.manager/call_method/cache/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/call_method/cache/_

# 実装されているか確認
    data modify storage reizo_mcfunc_engin:mob Call.Cache.Args.ID set from storage reizo_mcfunc_engin:context Register.Extends[0].ID
    data modify storage reizo_mcfunc_engin:mob Call.Cache.Args.namespace set from storage reizo_mcfunc_engin:context Register.Extends[0].namespace
    function reizo_mcfunc_engin:asset/mob/.manager/call_method/cache/is_implement.m with storage reizo_mcfunc_engin:mob Call.Cache.Args

# tickメソッドが実装されていた場合、キャッシュにデータを積む
execute \
    if data storage reizo_mcfunc_engin:mob Temp.Cache{Implement:1b} run \
    data modify storage reizo_mcfunc_engin:mob Call.Cache.Method append from storage reizo_mcfunc_engin:context Register.Extends[0]

# お掃除
    data remove storage reizo_mcfunc_engin:context Register.Extends[0]
    data remove storage reizo_mcfunc_engin:mob Temp.Cache

# 要素が残るなら再帰
execute if data storage reizo_mcfunc_engin:context Register.Extends[0] run function reizo_mcfunc_engin:asset/mob/.manager/call_method/cache/foreach