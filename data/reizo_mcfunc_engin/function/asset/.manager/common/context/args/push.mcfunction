#> reizo_mcfunc_engin:asset/.manager/common/context/args/push
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/_

# データ取得
data modify storage reizo_mcfunc_engin:context Args set from entity @s data.Args

# Originにコピー
data modify storage reizo_mcfunc_engin:context Origin_Args set from storage reizo_mcfunc_engin:context Args