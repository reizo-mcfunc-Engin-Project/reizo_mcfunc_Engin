#> reizo_mcfunc_engin:asset/tools/0002.display_tool/used/sneak/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/_

# データとりまぁす！
execute \
if entity @n[type=block_display] run \
data modify storage reizo_mcfunc_engin:_ Tools.DisplayTool.DisplayData.Block set from entity @n[type=block_display] block_state

# パーティクル
execute \
if entity @n[type=block_display] \
positioned as @n[type=block_display] run \
function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/sneak/true/particle.m with storage reizo_mcfunc_engin:_ Tools.DisplayTool.DisplayData.Block

# kill!
kill @n[type=#reizo_mcfunc_engin:displays,tag=!reizo_mcfunc_Engin.Object.CubeParticle]

# 音
playsound block.amethyst_block.break