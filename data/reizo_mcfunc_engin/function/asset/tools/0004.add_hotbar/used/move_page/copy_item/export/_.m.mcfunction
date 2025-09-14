#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/*/_

# 元アイテムと数を置く
$item replace entity @s container.$(Slot) with $(id) $(count)

# ComponentsがあるならComponentsを設定
execute \
if data storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp.components run \
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/components.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp

# お掃除
data remove storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp