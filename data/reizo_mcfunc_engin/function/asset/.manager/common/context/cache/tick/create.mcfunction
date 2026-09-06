#> reizo_mcfunc_engin:asset/.manager/common/context/cache/tick/create
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/set_data/init/cache

# tickメソッドが実装されていた場合、キャッシュにデータを積む
execute \
    if data storage reizo_mcfunc_engin:context Temp.Cache{Implement:1b} run \
    data modify storage reizo_mcfunc_engin:context Cache.Tick append from storage reizo_mcfunc_engin:context Register.Extends[0]

# お掃除
    data remove storage reizo_mcfunc_engin:context Register.Extends[0]
    data remove storage reizo_mcfunc_engin:context Temp.Cache