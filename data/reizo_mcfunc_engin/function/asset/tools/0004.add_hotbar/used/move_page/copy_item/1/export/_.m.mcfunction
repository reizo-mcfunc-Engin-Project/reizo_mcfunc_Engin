#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/1/export/_.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/1/_

$item replace entity @s container.$(Slot) with $(id) $(count)

$execute \
if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0.$(Slot).components run \
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/1/export/components.m with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.1.$(Slot)