#> reizo_mcfunc_engin:core/tick/_
#
# ここに多くの処理を書かないこと。
#
# @within tag/function minecraft:tick

# IDの$Coreの値がNullならば初期値を入れる
execute \
unless score $Core reizo_mcfunc_Engin.ScoreID matches -2147483648..2147483647 run \
scoreboard players set $Core reizo_mcfunc_Engin.ScoreID -2147483648

# プレイヤーの処理
execute as @a at @s run function reizo_mcfunc_engin:player/tick/_

# tick単位でのデータ取得
function reizo_mcfunc_engin:core/tick/get_data

# CubeParticleがいなくなると困るよ。
execute \
if score $CubeParticleCount reizo_mcfunc_Engin._ matches ..1 run \
function reizo_mcfunc_engin:core/tick/re_spawn_cube_particle

# CubeParticleが三体以上いるならオカシイ
execute \
if score $CubeParticleCount reizo_mcfunc_Engin._ matches 3.. run \
function reizo_mcfunc_engin:core/tick/re_spawn_cube_particle

# Object以外は基本Mob
execute \
if entity @e[type=!#reizo_mcfunc_engin:object/default,type=!player,tag=reizo_mcfunc_Engin.Mob] \
as @e[type=!#reizo_mcfunc_engin:object/default,type=!player,tag=reizo_mcfunc_Engin.Mob] at @s run \
function reizo_mcfunc_engin:asset/mob/.manager/tick/_

# Objectの処理
execute \
if entity @e[tag=reizo_mcfunc_Engin.Object,type=#reizo_mcfunc_engin:object/default] \
as @e[tag=reizo_mcfunc_Engin.Object,type=#reizo_mcfunc_engin:object/default] at @s run \
function reizo_mcfunc_engin:asset/object/.manager/tick/_