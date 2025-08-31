#> reizo_mcfunc_engin:asset/tools/0003.get_distance/used/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0003.get_distance/tick/_

# シフトを押していないなら、ループ開始
execute \
unless predicate reizo_mcfunc_engin:sneak \
anchored eyes \
positioned ^ ^ ^ run \
function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/_

# シフトを押しているなら
execute \
if predicate reizo_mcfunc_engin:sneak run \
function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n/_