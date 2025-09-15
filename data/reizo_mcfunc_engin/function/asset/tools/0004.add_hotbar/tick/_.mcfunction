#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/.manager/tick/run.m/_

# シフトを一瞬押した
execute \
if score @s reizo_mcfunc_Engin.Sneaking matches 1 run \
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/tick/change_mode