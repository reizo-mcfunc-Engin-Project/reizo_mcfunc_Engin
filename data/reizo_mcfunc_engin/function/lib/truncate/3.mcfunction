#> reizo_mcfunc_engin:lib/truncate/3
#
# 
#
# @public

# CPVライブラリ呼び出し
function reizo_mcfunc_engin:lib/truncate/sys/used_cpv_lib

# 確認
function reizo_mcfunc_engin:lib/truncate/sys/conversion_string/check

#> 必要なもの以外消す。
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:Null}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 5
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:1}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 5
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:10}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 6
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:100}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 7
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:1000}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 8
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:10000}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 9
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:100000}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 10
    execute \
    if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:1000000}} run \
    data modify storage reizo_mcfunc_engin:lib Truncate.SelectedString set string storage reizo_mcfunc_engin:lib Truncate.String 0 11

# ライブラリリセット
data remove storage reizo_mcfunc_engin:lib In.CheckPlaceValue
data remove storage reizo_mcfunc_engin:lib Return.CheckPlaceValue