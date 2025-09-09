#> reizo_mcfunc_engin:asset/tools/0003.get_distance/used/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0003.get_distance/tick/_

# 音を出す
playsound item.spyglass.use player @s ~ ~ ~ 1 1 1

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

# 距離測定失敗したときの処理
execute \
unless entity @s[tag=reizo_mcfunc_Engin.Tools.GetDis.GetDisSuccess] run \
function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/fail

# 剥奪
tag @s remove reizo_mcfunc_Engin.Tools.GetDis.GetDisSuccess