#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/2/import/if
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/copy_item/2/import/_

    # 読み込み
    execute \
    if data entity @s Inventory[{Slot:0b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.2.0 set from entity @s Inventory[{Slot:0b}]
    execute \
    if data entity @s Inventory[{Slot:1b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.2.1 set from entity @s Inventory[{Slot:1b}]
    execute \
    if data entity @s Inventory[{Slot:2b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.2.2 set from entity @s Inventory[{Slot:2b}]
    execute \
    if data entity @s Inventory[{Slot:3b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.2.3 set from entity @s Inventory[{Slot:3b}]
    execute \
    if data entity @s Inventory[{Slot:4b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.2.4 set from entity @s Inventory[{Slot:4b}]
    execute \
    if data entity @s Inventory[{Slot:5b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.2.5 set from entity @s Inventory[{Slot:5b}]
    execute \
    if data entity @s Inventory[{Slot:6b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.2.6 set from entity @s Inventory[{Slot:6b}]
    execute \
    if data entity @s Inventory[{Slot:7b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.2.7 set from entity @s Inventory[{Slot:7b}]
    execute \
    if data entity @s Inventory[{Slot:8b}] run \
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Tool.AddHotBar.2.8 set from entity @s Inventory[{Slot:8b}]