#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/0/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/_

# OMD呼び出し
function #oh_my_dat:please

#> 初期値
    execute \
    unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0 run \
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/0/init
    execute \
    unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.1 run \
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/1/init
    execute \
    unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.2 run \
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/2/init

# 読み込み
function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/0/import/_

#> 出力
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0[{Slot:0b}]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0[{Slot:1b}]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0[{Slot:2b}]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0[{Slot:3b}]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0[{Slot:4b}]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0[{Slot:5b}]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0[{Slot:6b}]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0[{Slot:7b}]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp
    data modify storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0[{Slot:8b}]
    function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/export/_.m with storage reizo_mcfunc_engin:_ Tools.AddHotBar.Temp