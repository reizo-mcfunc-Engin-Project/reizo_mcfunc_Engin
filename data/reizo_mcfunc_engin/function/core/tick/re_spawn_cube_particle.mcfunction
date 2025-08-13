#> reizo_mcfunc_engin:core/tick/re_spawn_cube_particle
#
# CubeParticleがいないぜ！
#
# @within function reizo_mcfunc_engin:core/tick/_

# とりま残っている奴らを殺す
kill @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.CubeParticle,type=block_display]

# 召喚
function reizo_mcfunc_engin:asset/object/.manager/summon/run.m {ID:"0002.cube_particle",namespace:"reizo_mcfunc_engin"}