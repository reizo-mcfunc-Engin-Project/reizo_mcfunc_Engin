#> reizo_mcfunc_engin:core/tick/re_spawn_cube_particle
#
# CubeParticleが足りないときの処理
#
# @within function reizo_mcfunc_engin:core/tick/_

# 残ったら困るから殺す
kill @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.CubeParticle,type=armor_stand]

# 召喚
function reizo_mcfunc_engin:api/object/summon.m {ID:"0002.cube_particle",namespace:"reizo_mcfunc_engin"}