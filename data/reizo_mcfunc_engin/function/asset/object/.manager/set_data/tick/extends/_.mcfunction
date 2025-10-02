#> reizo_mcfunc_engin:asset/object/.manager/set_data/tick/extends/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/set_data/tick/_

# 継承情報コピー
data modify storage reizo_mcfunc_engin:object CopyExtends set from entity @s data.Registry.Extends

# 継承元の動作を呼び出す
execute \
if data storage reizo_mcfunc_engin:object CopyExtends[0] run \
function reizo_mcfunc_engin:asset/object/.manager/set_data/tick/extends/foreach