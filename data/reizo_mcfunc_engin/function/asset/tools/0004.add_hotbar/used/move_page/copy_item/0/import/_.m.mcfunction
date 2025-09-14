#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/0/import/_.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/0/_

$item replace entity @s container.$(Slot) with $(id) $(count)

$execute \
if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0.$(Slot).components run \
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/0/import/components.m with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0.$(Slot)