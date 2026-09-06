#> reizo_mcfunc_engin:asset/item/.manager/context/cache/not_hold/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/context/cache/not_hold/create

# 実装されているか確認
function reizo_mcfunc_engin:asset/item/.manager/context/cache/not_hold/is_implement.m with storage reizo_mcfunc_engin:context Register.Extends[0]

# 作る(恐らく)
    # メソッドが実装されていた場合、キャッシュにデータを積む
    execute \
        if data storage reizo_mcfunc_engin:context Temp.Cache{Implement:1b} run \
        data modify storage reizo_mcfunc_engin:context Cache.NotHold append from storage reizo_mcfunc_engin:context Register.Extends[0]

# お掃除
    data remove storage reizo_mcfunc_engin:context Register.Extends[0]
    data remove storage reizo_mcfunc_engin:context Temp.Cache

# 要素が残るなら再帰
execute if data storage reizo_mcfunc_engin:context Register.Extends[0] run return run function reizo_mcfunc_engin:asset/item/.manager/context/cache/not_hold/foreach