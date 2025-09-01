#> reizo_mcfunc_engin:lib/truncate/sys/conversion_string/check
#
# 
#
# @within function reizo_mcfunc_engin:lib/truncate/*

#> ノーマルかNullか検知
    # 普通の時
    execute \
    unless data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:"Null"}} run \
    return run function reizo_mcfunc_engin:lib/truncate/sys/conversion_string/normal.m with storage reizo_mcfunc_engin:lib In
    # Null
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:"Null"}} run \
    return run function reizo_mcfunc_engin:lib/truncate/sys/conversion_string/null.m with storage reizo_mcfunc_engin:lib In