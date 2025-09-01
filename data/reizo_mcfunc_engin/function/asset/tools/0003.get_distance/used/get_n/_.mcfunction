#> reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n

# 距離測定
execute \
as @s positioned as @n[distance=0.5..] run \
function km_distance:as_to_at

#> 小数点第一位以下切り捨て
    # ライブラリ使用のために、ストレージに移行
    data modify storage reizo_mcfunc_engin:lib In.Truncate set from storage km_distance: out
    # ライブラリ使用
    function reizo_mcfunc_engin:lib/truncate/1

# 出してみる。
function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n/tell.m with storage reizo_mcfunc_engin:lib Return