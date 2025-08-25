#> reizo_mcfunc_engin:core/tick/get_data
#
# tick単位でのデータゲット
#
# @within function reizo_mcfunc_engin:core/tick/_

# 現在の時間を取得
execute \
store result score $Time reizo_mcfunc_Engin._ run \
time query gametime

# プレイ時間を取得
execute \
if score $PlayerCount reizo_mcfunc_Engin._ matches 1.. run \
scoreboard players add $PlayTime reizo_mcfunc_Engin._ 1

# ChuzToolsが導入されているなら、Test君の数を検知する。
execute \
if entity @e[tag=ChuzTools.OriginMarker,type=marker] \
store result score $TestCount reizo_mcfunc_Engin._ \
if entity @e[type=armor_stand,tag=Test]

# CubeParticleの数を取る
execute \
store result score $CubeParticleCount reizo_mcfunc_Engin._ \
positioned 0.0 0.0 0.0 \
if entity @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.CubeParticle,type=block_display,distance=..0.1]