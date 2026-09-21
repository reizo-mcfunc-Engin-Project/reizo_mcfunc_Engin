#> reizo_mcfunc_engin:asset/effect/.manager/set_data/init/cache/tick/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/set_data/init/cache/tick/create

# 実装されているか確認
function reizo_mcfunc_engin:asset/effect/.manager/set_data/init/cache/tick/is_implement.m with storage reizo_mcfunc_engin:context Register.Extends[0]

# tickメソッドが実装されていた場合、キャッシュにデータを積む
execute \
    if data storage reizo_mcfunc_engin:effect Temp.Cache{Implement:1b} run \
    data modify storage reizo_mcfunc_engin:effect Cache.Tick append from storage reizo_mcfunc_engin:context Register.Extends[0]

# お掃除
    data remove storage reizo_mcfunc_engin:context Register.Extends[0]
    data remove storage reizo_mcfunc_engin:effect Temp.Cache

# 要素が残るなら再帰
execute if data storage reizo_mcfunc_engin:context Register.Extends[0] run function reizo_mcfunc_engin:asset/effect/.manager/set_data/init/cache/tick/foreach