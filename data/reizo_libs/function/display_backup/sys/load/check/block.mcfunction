#> reizo_libs:display_backup/sys/load/check/block
#
# 
#
# @within function reizo_libs:display_backup/sys/load/_

execute \
unless entity @e[distance=..0.1,type=block_display] run \
data modify storage reizo_mcfunc_engin:lib DisplayBackUp.Summon set value 1b