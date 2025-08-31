#> reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n

# 距離測定
execute \
as @s positioned as @n[distance=0.5..] run \
function km_distance:as_to_at

# 出してみる。
function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n/tell.m with storage km_distance: