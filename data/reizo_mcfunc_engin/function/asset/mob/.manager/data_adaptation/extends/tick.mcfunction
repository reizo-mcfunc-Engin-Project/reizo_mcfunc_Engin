#> reizo_mcfunc_engin:asset/mob/.manager/data_adaptation/extends/tick
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/data_adaptation/tick

# 継承情報コピー
data modify storage reizo_mcfunc_engin:mob CopyExtends append value []
data modify storage reizo_mcfunc_engin:mob CopyExtends append from storage reizo_mcfunc_engin:mob Registry.Extends

# 継承元を呼び出す
execute \
if data storage reizo_mcfunc_engin:mob CopyExtends[-1][0] run \
function reizo_mcfunc_engin:asset/mob/.manager/data_adaptation/extends/foreach

# リセット
data remove storage reizo_mcfunc_engin:mob CopyExtends