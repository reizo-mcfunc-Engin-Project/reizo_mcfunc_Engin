#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/_

# OMD呼び出し
function #oh_my_dat:please

#> Init
    # 最初にセレクトしているホットバーは0
    execute \
    unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.SelectHotBar run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.SelectHotBar set value 0
    # 配列
    execute \
    unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar._ run \
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/init

# 配列の長さを取得
execute \
store result score $Tools.AddHotBar.ListCount reizo_mcfunc_Engin.Temp run \
data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar._

# セレクトされている場所をTempにコピー
execute \
store result score $Tools.AddHotBar.SelectHotBar reizo_mcfunc_Engin.Temp run \
data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.SelectHotBar

# スコアを1上げる
scoreboard players add $Tools.AddHotBar.SelectHotBar reizo_mcfunc_Engin.Temp 1

# 値が配列の長さと同じなら0に
execute \
if score $Tools.AddHotBar.SelectHotBar reizo_mcfunc_Engin.Temp = $Tools.AddHotBar.ListCount reizo_mcfunc_Engin.Temp run \
scoreboard players set $Tools.AddHotBar.SelectHotBar reizo_mcfunc_Engin.Temp 0

# 今どこのホットバーなのか伝える
title @s actionbar [{"text":"ホットバー",color:"aqua"},{"text":":","color":"white"},{"score":{name:"$Tools.AddHotBar.SelectHotBar",objective:"reizo_mcfunc_Engin.Temp"},"color":"gold"}]

# ストレージにコピー
execute \
store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.SelectHotBar int 1 run \
scoreboard players get $Tools.AddHotBar.SelectHotBar reizo_mcfunc_Engin.Temp

# スコアリセット
scoreboard players reset $Tools.AddHotBar.SelectHotBar reizo_mcfunc_Engin.Temp
scoreboard players reset $Tools.AddHotBar.ListCount

# 音を出してみる
playsound block.chest.locked master @s ~ ~ ~ 0.5 2
playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.3 2

# Import
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar._ append value []
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/import/unless
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/import/if

#> 次のを選択したいので[1]をExport
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar._[1][0]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar._[1][1]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar._[1][2]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar._[1][3]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar._[1][4]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar._[1][5]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar._[1][6]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar._[1][7]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar._[1][8]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp

# Remove
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar._[0]