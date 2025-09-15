#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/_

# OMD呼び出し
function #oh_my_dat:please

# OMDをコピー
data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar

#> Init
    # 最初にセレクトしているホットバーは0
    execute \
    unless data storage reizo_mcfunc_engin:_ Tools.AddHotBar.SelectHotBar run \
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.SelectHotBar set value 0
    # 配列
    execute \
    unless data storage reizo_mcfunc_engin:_ Tools.AddHotBar._ run \
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/init

# 今どこにいるか確認
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/check_select

# 音を出してみる
playsound block.chest.locked master @s ~ ~ ~ 0.5 2
playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.3 2

# Import
data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar._ append value []
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/import/unless
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/import/if

#> 次のを選択したいので[1]をExport
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage reizo_mcfunc_engin:_ Tools.AddHotBar._[1][0]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage reizo_mcfunc_engin:_ Tools.AddHotBar._[1][1]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage reizo_mcfunc_engin:_ Tools.AddHotBar._[1][2]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage reizo_mcfunc_engin:_ Tools.AddHotBar._[1][3]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage reizo_mcfunc_engin:_ Tools.AddHotBar._[1][4]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage reizo_mcfunc_engin:_ Tools.AddHotBar._[1][5]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage reizo_mcfunc_engin:_ Tools.AddHotBar._[1][6]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage reizo_mcfunc_engin:_ Tools.AddHotBar._[1][7]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage reizo_mcfunc_engin:_ Tools.AddHotBar._[1][8]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp

# Remove
data remove storage reizo_mcfunc_engin:_ Tools.AddHotBar._[0]

# 最後にOMDへコピー
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar set from storage reizo_mcfunc_engin:_ Tools.AddHotBar

# お掃除
data remove storage reizo_mcfunc_engin:_ Tools.AddHotBar