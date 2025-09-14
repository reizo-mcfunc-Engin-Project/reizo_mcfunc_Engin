#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/components.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m

# 指定のスロットのアイテムのComponentsを設定
$item modify entity @s container.$(Slot) {function:"set_components",components:$(components)}