#> reizo_mcfunc_engin:asset/object/tools.check_point_marker/tick/_
#
# tools.check_point_markerの動作
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/run.m

# パーティクル召喚
particle glow ~ ~0.45 ~
execute \
positioned ~ ~0.1 ~ run \
function reizo_mcfunc_engin:asset/object/tools.check_point_marker/tick/particle/tick

# スコアを持っていない値を許さない。
execute \
unless score @s reizo_mcfunc_Engin.ScoreID matches -2147483648..2147483647 run \
scoreboard players add @s reizo_mcfunc_Engin.KiiTimer 1

# 1なら死ぬ。
kill @s[scores={reizo_mcfunc_Engin.KiiTimer=60..}]