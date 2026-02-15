#> reizo_mcfunc_engin:core/tick/get_data
#
# tick単位でのデータゲット
#
# @within function reizo_mcfunc_engin:core/tick/_

# プレイヤー数
execute \
store result score $PlayerCount reizo_mcfunc_Engin._ \
if entity @a

# CubeParticleの数
execute \
store result score $CubeParticleCount reizo_mcfunc_Engin._ \
positioned 0.0 0.0 0.0 \
if entity @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.CubeParticle,type=marker,distance=..0]