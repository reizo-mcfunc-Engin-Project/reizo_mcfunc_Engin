#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/move_num/2
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/move_num/_

execute \
if data storage reizo_mcfunc_engin:_ Tool.Off_Address run \
item modify entity @s weapon.offhand {function:"set_custom_data",tag:{Sys:{Tool:{HotBarNum:"0"}}}}

execute \
if data storage reizo_mcfunc_engin:_ Tool.Main_Address run \
item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{Sys:{Tool:{HotBarNum:"0"}}}}