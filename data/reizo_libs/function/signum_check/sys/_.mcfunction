#> reizo_libs:signum/sys/_
#
# Tempが0以上か0以下か検知、戻り値を入れる。
#
# @within function reizo_libs:signum/*

# 0だった。
execute \
if score $Signum reizo_mcfunc_Engin.Temp matches 0 run \
data modify storage reizo_mcfunc_engin:lib Return.Signum set value 0.0f

# 1以上
execute \
if score $Signum reizo_mcfunc_Engin.Temp matches 1.. run \
data modify storage reizo_mcfunc_engin:lib Return.Signum set value 1.0f

# -1以下
execute \
if score $Signum reizo_mcfunc_Engin.Temp matches ..-1 run \
data modify storage reizo_mcfunc_engin:lib Return.Signum set value -1.0f

# デバッグTagついてる奴いるな、伝えるか。
execute \
if entity @a[tag=reizo.Debug] run \
function reizo_libs:signum_check/debug/tell_value with storage reizo_mcfunc_engin:lib Debug

# リセット！
scoreboard players reset $Signum reizo_mcfunc_Engin.Temp