#> reizo_libs:truncate/13
#
# 
#
# @public

# CPVライブラリ呼び出し
function reizo_libs:truncate/sys/used_cpv_lib

# 確認
function reizo_libs:truncate/sys/conversion_string/check

#> 必要なもの以外消す。
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:Null}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 15
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:1}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 15
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:10}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 16
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:100}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 17
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:1000}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 18
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:10000}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 19
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:100000}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 20
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:1000000}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 21

# ライブラリリセット
data remove storage reizo_mcfunc_engin:lib In.CheckPlaceValue
data remove storage reizo_mcfunc_engin:lib Return.CheckPlaceValue