#> reizo_mcfunc_engin:asset/object/.manager/summon/summon
#
# 召喚処理はここで管理。
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/run.m

# 召喚！
function reizo_mcfunc_engin:asset/object/.manager/summon/core/summon.m with storage reizo_mcfunc_engin:object

# init処理
execute as @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.Init] at @s run \
function reizo_mcfunc_engin:asset/object/.manager/summon/init

# リセット
data remove storage reizo_mcfunc_engin:object ID
data remove storage reizo_mcfunc_engin:object namespace
data remove storage reizo_mcfunc_engin:object Register