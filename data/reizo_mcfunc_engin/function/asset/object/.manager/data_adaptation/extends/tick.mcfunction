#> reizo_mcfunc_engin:asset/object/.manager/data_adaptation/extends/tick
#
# 継承譲歩をコピー、そして継承元を呼び出し。
#
# @within function reizo_mcfunc_engin:asset/object/.manager/data_adaptation/tick

# 継承情報をコピー
data modify storage reizo_mcfunc_engin:object CopyExtends append value []
data modify storage reizo_mcfunc_engin:object CopyExtends[-1] set from entity @s data.Register.Extends

# 継承元を呼び出す
execute \
if data storage reizo_mcfunc_engin:object CopyExtends[-1][0] run \
function reizo_mcfunc_engin:asset/object/.manager/data_adaptation/extends/foreach

# リセット
data remove storage reizo_mcfunc_engin:object CopyExtends