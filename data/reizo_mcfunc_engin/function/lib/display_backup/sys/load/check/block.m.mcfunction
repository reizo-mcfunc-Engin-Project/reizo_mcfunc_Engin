#> reizo_mcfunc_engin:lib/display_backup/sys/load/check/block.m
#
# 
#
# @within function reizo_mcfunc_engin:lib/display_backup/sys/load/_

$execute \
positioned $(x) $(y) $(z) \
unless entity @e[distance=..0.1,type=block_display] run \
data modify storage reizo_mcfunc_engin:lib DisplayBackUp.Summon set value 1b