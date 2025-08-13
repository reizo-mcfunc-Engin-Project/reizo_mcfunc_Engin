#> reizo_mcfunc_engin:core/tick/_
#
# ここに多くの処理を書かないこと。
#
# @within tag/function minecraft:tick

# プレイヤーの処理
execute as @a at @s run function reizo_mcfunc_engin:core/tick/player/tick

# tick単位でのデータ取得
function reizo_mcfunc_engin:core/tick/get_data

# CubeParticleがいなくなると困るよ。
execute \
if score $CubeParticleCount reizo_mcfunc_Engin._ matches ..1 run \
function reizo_mcfunc_engin:core/tick/re_spawn_cube_particle

# Objectの処理
execute \
if entity @e[tag=reizo_mcfunc_Engin.Object,type=#reizo_mcfunc_engin:object/default] \
as @e[tag=reizo_mcfunc_Engin.Object,type=#reizo_mcfunc_engin:object/default] at @s run \
function reizo_mcfunc_engin:asset/object/.manager/tick/_