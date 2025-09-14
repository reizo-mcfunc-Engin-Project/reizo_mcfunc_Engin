#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/1/export/unless
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/1/export/if

    # 読み込み
    execute \
    unless data entity @s Inventory[{Slot:0b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0.0 set from entity @s Inventory[{Slot:0b}]
    execute \
    unless data entity @s Inventory[{Slot:1b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0.1 set from entity @s Inventory[{Slot:1b}]
    execute \
    unless data entity @s Inventory[{Slot:2b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0.2 set from entity @s Inventory[{Slot:2b}]
    execute \
    unless data entity @s Inventory[{Slot:3b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0.3 set from entity @s Inventory[{Slot:3b}]
    execute \
    unless data entity @s Inventory[{Slot:4b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0.4 set from entity @s Inventory[{Slot:4b}]
    execute \
    unless data entity @s Inventory[{Slot:5b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0.5 set from entity @s Inventory[{Slot:5b}]
    execute \
    unless data entity @s Inventory[{Slot:6b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0.6 set from entity @s Inventory[{Slot:6b}]
    execute \
    unless data entity @s Inventory[{Slot:7b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0.7 set from entity @s Inventory[{Slot:7b}]
    execute \
    unless data entity @s Inventory[{Slot:8b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.0.8 set from entity @s Inventory[{Slot:8b}]