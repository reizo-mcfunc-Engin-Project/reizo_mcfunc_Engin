#> reizo_mcfunc_engin:lib/truncate/sys/used_cpv_lib
#
# 
#
# @within function reizo_mcfunc_engin:lib/truncate/*

#> まずは値の位を調べる。
    # CheckPlaceValueのInにTruncateのInの値をコピー
    data modify storage reizo_mcfunc_engin:lib In.CheckPlaceValue set from storage reizo_mcfunc_engin:lib In.Truncate
    # CPVライブラリ使用
    function reizo_mcfunc_engin:lib/check_place_value/_