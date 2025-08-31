#> reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/_
#
# ディスプレイツールの動作。
#
# @within function reizo_mcfunc_engin:asset/tools/.manager/tick/run.m/_

# 俺にだけ見えててくれ！(パクリ)
tag @s add reizo_mcfunc_Engin.User

# しゃがんでて笑う。
execute \
if predicate reizo_mcfunc_engin:sneak \
as @n[type=#reizo_mcfunc_engin:displays] at @s run \
function reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/sneak/_

# 左手
execute \
unless predicate reizo_mcfunc_engin:sneak \
if data storage reizo_mcfunc_engin:_ Item.Off_Address \
anchored eyes \
positioned ^ ^ ^4 run \
function reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/cursor

# 右手
execute \
unless predicate reizo_mcfunc_engin:sneak \
if data storage reizo_mcfunc_engin:_ Item.Main_Address \
anchored eyes \
positioned ^ ^ ^2 run \
function reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/cursor

# リセット！
data remove storage reizo_mcfunc_engin:_ Tools.DisplayTool.Item
data remove storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block
tag @s remove reizo_mcfunc_Engin.User