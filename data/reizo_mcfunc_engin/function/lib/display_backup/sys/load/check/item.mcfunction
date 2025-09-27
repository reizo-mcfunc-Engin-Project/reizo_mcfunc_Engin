#> reizo_mcfunc_engin:lib/display_backup/sys/load/check/item
#
# 
#
# @within function reizo_mcfunc_engin:lib/display_backup/sys/load/_

execute \
unless entity @e[distance=..0.1,type=item_display] run \
data modify storage reizo_mcfunc_engin:lib DisplayBackUp.Summon set value 1b

