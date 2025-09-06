#> reizo_mcfunc_engin:lib/truncate/sys/conversion_num/check
#
# 
#
# @within function reizo_mcfunc_engin:lib/truncate/*

# StringはStringで。
data modify storage reizo_mcfunc_engin:lib Return.Truncate.String set from storage reizo_mcfunc_engin:lib Truncate.SelectedString

#> ノーマルかNullか検知
    # 普通の時
    execute \
    unless data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:"Null"}} run \
    return run function reizo_mcfunc_engin:lib/truncate/sys/conversion_num/normal.m with storage reizo_mcfunc_engin:lib Truncate
    # Null
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:"Null"}} run \
    return run function reizo_mcfunc_engin:lib/truncate/sys/conversion_num/null.m with storage reizo_mcfunc_engin:lib Truncate