#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/add_hotbar/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/_

# リストを作成
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/add_hotbar/create_list

# 音
playsound minecraft:block.crafter.craft master @s ~ ~ ~ 1 0 1

# 配列の長さを取得
execute \
store result score $Tools.AddHotBar.ListCount reizo_mcfunc_Engin.Temp run \
data get storage reizo_mcfunc_engin:_ Tools.AddHotBar._

# いう
title @s actionbar [{"text":"ホットバーの数","color":"aqua"},{"text":":","color":"white"},{"score":{"name":"$Tools.AddHotBar.ListCount","objective":"reizo_mcfunc_Engin.Temp"},"color":"gold"}]

# リセット
scoreboard players reset $Tools.AddHotBar.ListCount reizo_mcfunc_Engin.Temp