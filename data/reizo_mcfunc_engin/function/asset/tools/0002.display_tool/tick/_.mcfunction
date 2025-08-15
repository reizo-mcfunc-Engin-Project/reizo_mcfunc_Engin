#> reizo_mcfunc_engin:asset/tools/0002.display_tool/tick/_
#
# ディスプレイツールの動作。
#
# @within function reizo_mcfunc_engin:asset/tools/.manager/tick/run.m/_

# しゃがんでて笑う。
execute \
if predicate reizo_mcfunc_engin:sneak run \
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

# 使ったな！
execute \
if score @s reizo_mcfunc_Engin.using_Item matches 1 run \
function reizo_mcfunc_engin:asset/tools/0002.display_tool/used/_

# リセット！
data remove storage reizo_mcfunc_engin:_ Tools.DisplayTool.Item
data remove storage reizo_mcfunc_engin:_ Tools.DisplayTool.Block