#> reizo_mcfunc_engin:asset/mob/.manager/set_data/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/init

# まさかのデータ取得出来てない事件
execute \
unless data storage reizo_mcfunc_engin:mob Register run \
function reizo_erros:fail_data_get {Data:"Register"}

# お名前つけます。
execute \
if data storage reizo_mcfunc_engin:mob Register.Name run \
data modify entity @s CustomName set from storage reizo_mcfunc_engin:mob Register.Name

# 体力設定！
execute \
if data storage reizo_mcfunc_engin:mob Register.Health run \
data modify entity @s Health set from storage reizo_mcfunc_engin:mob Register.Health

#> 装備！
    # Head
    execute \
    if data storage reizo_mcfunc_engin:mob Register.Head run \
    data modify entity @s equipment.head set from storage reizo_mcfunc_engin:mob Register.Head
    # Chest
    execute \
    if data storage reizo_mcfunc_engin:mob Register.Chest run \
    data modify entity @s equipment.chest set from storage reizo_mcfunc_engin:mob Register.Chest
    # Legs
    execute \
    if data storage reizo_mcfunc_engin:mob Register.Legs run \
    data modify entity @s equipment.legs set from storage reizo_mcfunc_engin:mob Register.Legs
    # Feet
    execute \
    if data storage reizo_mcfunc_engin:mob Register.Feet run \
    data modify entity @s equipment.feet set from storage reizo_mcfunc_engin:mob Register.Feet
    # main_hand
    execute \
    if data storage reizo_mcfunc_engin:mob Register.main_hand run \
    data modify entity @s equipment.mainhand set from storage reizo_mcfunc_engin:mob Register.main_hand
    # off_hand
    execute \
    if data storage reizo_mcfunc_engin:mob Register.off_hand run \
    data modify entity @s equipment.offhand set from storage reizo_mcfunc_engin:mob Register.off_hand

# 死んだときのアイテムはどうなるか。
execute \
if data storage reizo_mcfunc_engin:mob {Register:{DethItem_Empty:1b}} run \
data modify entity @s DeathLootTable set value "reizo_mcfunc_engin:death/empty"

# 大きさ変更
function reizo_mcfunc_engin:asset/mob/.manager/set_data/init/scale.m with storage reizo_mcfunc_engin:mob Register

#> dataにして持っていきたいものがあるんだ。
    # Flammable
    data modify entity @s data.Registry.Flammable set from storage reizo_mcfunc_engin:mob Register.Flammable