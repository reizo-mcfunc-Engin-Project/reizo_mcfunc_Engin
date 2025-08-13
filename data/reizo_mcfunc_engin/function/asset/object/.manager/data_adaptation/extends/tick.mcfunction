#> 
#
# 
#
# @

#
data modify storage reizo_mcfunc_engin:asset CopyExtends append value []
data modify storage reizo_mcfunc_engin:asset CopyExtends[-1] set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Extends

# 継承元を呼び出す
execute \
if data storage reizo_mcfunc_engin:asset CopyExtends[-1][0] run \
function reizo_mcfunc_engin:asset/object/.manager/data_adaptation/extends/foreach

# リセット
data remove storage reizo_mcfunc_engin:asset CopyExtends[-1]