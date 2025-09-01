#> reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/_

particle wax_off ~ ~ ~

# 目の前に何かあるぞ！
execute \
unless block ^ ^ ^0.5 #reizo_mcfunc_engin:no_col run \
function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/end/_

# 目の前に何もない。
execute \
positioned ^ ^ ^0.5 \
if block ~ ~ ~ #reizo_mcfunc_engin:no_col \
if entity @s[distance=..512] run \
function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/_