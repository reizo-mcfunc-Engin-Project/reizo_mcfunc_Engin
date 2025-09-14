#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/*/_

$item replace entity @s container.$(Slot) with $(id) $(count)

execute \
if data storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp.components run \
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/components.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp

data remove storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp