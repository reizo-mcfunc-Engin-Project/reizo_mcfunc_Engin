#> reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/sneak/cube_particle
#
# キューブ上のパーティクルを召喚する
#
# @within function reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/sneak/_

execute \
rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle,type=block_display] \
positioned ^ ^ ^0.5 \
rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle,type=block_display] \
rotated ~ 0 \
positioned ^ ^ ^0.5 \
rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle,type=block_display] run \
particle electric_spark ^0.5 ^ ^