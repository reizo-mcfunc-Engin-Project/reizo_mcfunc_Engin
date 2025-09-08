#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/_

# Num取得
data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.HotBarNum set from entity @s equipment.offhand.components."minecraft:custom_data".Sys.Tool.HotBarNum

function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/move_num/_

# 最終的な値でどこに移動するか決めるので再度Num取得
data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.HotBarNum set from entity @s equipment.offhand.components."minecraft:custom_data".Sys.Tool.HotBarNum

# 今どこのホットバーなのか伝える
title @s actionbar [{"text":"ホットバー",color:"aqua"},{"text":":","color":"white"},{"storage":"reizo_mcfunc_engin:_","nbt":"Tools.AddHotBar.HotBarNum","color":"gold"}]

# 音を出してみる
playsound block.chest.locked master @s ~ ~ ~ 0.5 2
playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.3 2

execute \
if data storage reizo_mcfunc_engin:_ {Tools:{AddHotBar:{HotBarNum:"0"}}} \
at @e[tag=reizo_mcfunc_Engin.Object.AddHotBar_ChestMinecart,type=chest_minecart] \
if score @s reizo_mcfunc_Engin.ScoreID = @n[tag=reizo_mcfunc_Engin.Object.AddHotBar_ChestMinecart,type=chest_minecart,distance=..0.1] reizo_mcfunc_Engin.ScoreID run \
return run function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/0
execute \
if data storage reizo_mcfunc_engin:_ {Tools:{AddHotBar:{HotBarNum:"1"}}} \
at @e[tag=reizo_mcfunc_Engin.Object.AddHotBar_ChestMinecart,type=chest_minecart] \
if score @s reizo_mcfunc_Engin.ScoreID = @n[tag=reizo_mcfunc_Engin.Object.AddHotBar_ChestMinecart,type=chest_minecart,distance=..0.1] reizo_mcfunc_Engin.ScoreID run \
return run function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/1
execute \
if data storage reizo_mcfunc_engin:_ {Tools:{AddHotBar:{HotBarNum:"2"}}} \
at @e[tag=reizo_mcfunc_Engin.Object.AddHotBar_ChestMinecart,type=chest_minecart] \
if score @s reizo_mcfunc_Engin.ScoreID = @n[tag=reizo_mcfunc_Engin.Object.AddHotBar_ChestMinecart,type=chest_minecart,distance=..0.1] reizo_mcfunc_Engin.ScoreID run \
return run function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/2