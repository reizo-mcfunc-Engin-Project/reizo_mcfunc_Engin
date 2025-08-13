#> reizo_mcfunc_engin:asset/object/.manager/summon/summon
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/run.m

# 召喚！
function reizo_mcfunc_engin:asset/object/.manager/summon/core/summon with storage reizo_mcfunc_engin:asset

# init処理
execute as @e[tag=reizo_mcfunc_Engin.Object.Init] at @s run \
function reizo_mcfunc_engin:asset/object/.manager/summon/init

# リセット
data remove storage reizo_mcfunc_engin:asset ID
data remove storage reizo_mcfunc_engin:asset namespace
data remove storage reizo_mcfunc_engin:asset Register