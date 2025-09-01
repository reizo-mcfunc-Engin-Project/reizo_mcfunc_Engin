#> reizo_mcfunc_engin:lib/truncate/11
#
# 
#
# @within function reizo_mcfunc_engin:lib/truncate/10

# CPVライブラリ呼び出し
function reizo_mcfunc_engin:lib/truncate/sys/used_cpv_lib

# 確認
function reizo_mcfunc_engin:lib/truncate/sys/conversion_string/check

#> 必要なもの以外消す。
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:Null}} run \
    return run data modify storage reizo_mcfunc_engin:lib Return.Truncate set string storage reizo_mcfunc_engin:lib Truncate.String 0 13
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:1}} run \
    return run data modify storage reizo_mcfunc_engin:lib Return.Truncate set string storage reizo_mcfunc_engin:lib Truncate.String 0 13
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:10}} run \
    return run data modify storage reizo_mcfunc_engin:lib Return.Truncate set string storage reizo_mcfunc_engin:lib Truncate.String 0 14
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:100}} run \
    return run data modify storage reizo_mcfunc_engin:lib Return.Truncate set string storage reizo_mcfunc_engin:lib Truncate.String 0 15
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:1000}} run \
    return run data modify storage reizo_mcfunc_engin:lib Return.Truncate set string storage reizo_mcfunc_engin:lib Truncate.String 0 16
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:10000}} run \
    return run data modify storage reizo_mcfunc_engin:lib Return.Truncate set string storage reizo_mcfunc_engin:lib Truncate.String 0 17
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:100000}} run \
    return run data modify storage reizo_mcfunc_engin:lib Return.Truncate set string storage reizo_mcfunc_engin:lib Truncate.String 0 18
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:1000000}} run \
    return run data modify storage reizo_mcfunc_engin:lib Return.Truncate set string storage reizo_mcfunc_engin:lib Truncate.String 0 19

# ライブラリリセット
data remove storage reizo_mcfunc_engin:lib In.CheckPlaceValue
data remove storage reizo_mcfunc_engin:lib Return.CheckPlaceValue