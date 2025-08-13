#> reizo_mcfunc_engin:asset/mob/.manager/data_adaptation/tick
#
# 
#
# @within function
#   reizo_mcfunc_engin:asset/mob/.manager/data_adaptation/extends/tick
#   reizo_mcfunc_engin:asset/mob/.manager/data_adaptation/extends/foreach

# 実行用にnamespaceをコピー
data modify storage reizo_mcfunc_engin:mob Extends.namespace set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Mob.namespace

# IDを代入
data modify storage reizo_mcfunc_engin:mob Extends.ID set from storage reizo_mcfunc_engin:mob CopyExtends[-1][0]

# Registerで継承が禁止されていた。
execute \
if data storage reizo_mcfunc_engin:mob {Register:{Final:1b}} run \
return run function reizo_mcfunc_engin:error/call.super_method/final

# superクラスを常時呼び出し
function reizo_mcfunc_engin:asset/mob/.manager/tick/run.m with storage reizo_mcfunc_engin:mob Extends

# 先頭を削除する。
data remove storage reizo_mcfunc_engin:mob CopyExtends[-1][0]

# それでも要素が残っていれば再帰
execute \
if data storage reizo_mcfunc_engin:mob CopyExtends[-1][0] run \
function reizo_mcfunc_engin:asset/mob/.manager/data_adaptation/extends/foreach