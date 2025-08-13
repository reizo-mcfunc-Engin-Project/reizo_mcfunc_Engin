#> reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/sneak
#
# しゃがんでいるときに、kill対象へとパーティクルを置くもの。
#
# @within function reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/sneak

# あれだ。
execute \
positioned as @n[type=block_display,tag=!reizo_mcfunc_Engin.Object.CubeParticle] \
positioned ~0.5 ~0.5 ~0.5 \
rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle] \
positioned ^ ^ ^0.5 \
rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle] \
rotated ~ 0 \
positioned ^ ^ ^0.5 \
rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle] run \
particle electric_spark ^0.5 ^ ^

# あれだ(2)
execute \
positioned as @n[type=item_display] \
positioned ~ ~ ~ \
rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle] \
positioned ^ ^ ^0.5 \
rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle] \
rotated ~ 0 \
positioned ^ ^ ^0.5 \
rotated as @e[tag=reizo_mcfunc_Engin.Object.CubeParticle] run \
particle electric_spark ^0.5 ^ ^