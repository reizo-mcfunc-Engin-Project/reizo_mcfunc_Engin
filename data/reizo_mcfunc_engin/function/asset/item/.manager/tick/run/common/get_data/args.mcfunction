#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/get_data/args
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_

# データ取得
    data modify storage reizo_mcfunc_engin:context Args set from storage reizo_mcfunc_engin:context data.Args
    data remove storage reizo_mcfunc_engin:context data.Args
    data modify storage reizo_mcfunc_engin:context origin_Args set from storage reizo_mcfunc_engin:context Args