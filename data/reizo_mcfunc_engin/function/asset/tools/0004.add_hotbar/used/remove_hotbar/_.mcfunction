#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/remove_hotbar/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/_

# 先頭削除
data remove storage reizo_mcfunc_engin:_ Tools.AddHotBar._[0]

# 配列の長さ取得
execute \
store result score $Tools.AddHotBar.ListCount reizo_mcfunc_Engin.Temp run \
data get storage reizo_mcfunc_engin:_ Tools.AddHotBar._

# アウトプット
title @s actionbar [{"text":"ホットバーの数","color":"aqua"},{"text":":","color":"white"},{"score":{name:"$Tools.AddHotBar.ListCount",objective:"reizo_mcfunc_Engin.Temp"},color:"gold"}]

# リセット
scoreboard players reset $Tools.AddHotBar.ListCount reizo_mcfunc_Engin.Temp

# 音
playsound item.bundle.drop_contents master @s ~ ~ ~ 1 2 1