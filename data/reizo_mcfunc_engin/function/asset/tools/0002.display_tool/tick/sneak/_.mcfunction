#> reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/sneak
#
# しゃがんでいるときに、kill対象へとパーティクルを置くもの。
#
# @within function reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/sneak

# ブロックディスプレイ
execute \
if entity @s[type=block_display,tag=!reizo_mcfunc_Engin.Object.CubeParticle] \
positioned ~0.5 ~0.5 ~0.5 run \
function reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/sneak/cube_particle

# アイテムディスプレイ
execute \
if entity @s[type=item_display] \
positioned ~ ~ ~ run \
function reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/sneak/cube_particle

# テキストディスプレイ
execute \
if entity @s[type=text_display] \
positioned ~ ~ ~ run \
function reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/sneak/cube_particle