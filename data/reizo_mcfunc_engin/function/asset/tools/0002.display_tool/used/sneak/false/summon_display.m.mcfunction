#> reizo_mcfunc_engin:asset/tools/0002.display_tool/used/sneak/false/summon_display.m
#
# ディスプレイの召喚処理
#
# @within function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/sneak/false/_

# なんでデータないんだよ！エラーだよ！
execute \
unless data storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block run \
function reizo_mcfunc_engin:error/args {Args:"Block"}

# データがあるときに召喚！
$execute \
if data storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block run \
summon block_display ~-0.5 ~-0.5 ~-0.5 {block_state:{Name:"$(Block)"},Tags:["reizo_mcfunc_Engin.BD.Init"]}

# 音もだせ！
execute \
if data storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block run \
playsound block.amethyst_block.hit player @a ~ ~ ~ 1 1 1

# 俺、なんでairなんだよ。
execute \
if entity @n[tag=reizo_mcfunc_Engin.BD.Init,type=block_display,nbt={block_state:{Name:"minecraft:air"}}] run \
function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/fail/_

# 此奴は全然大丈夫～！
execute \
if entity @n[tag=reizo_mcfunc_Engin.BD.Init,type=block_display,nbt=!{block_state:{Name:"minecraft:air"}}] \
as @n[tag=reizo_mcfunc_Engin.BD.Init,type=block_display,nbt=!{block_state:{Name:"minecraft:air"}}] run \
tag @s remove reizo_mcfunc_Engin.BD.Init