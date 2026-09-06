#> reizo_mcfunc_engin:asset/mob/.manager/set_data/init/_
#
# MobのInitデータセット
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/init

# まさかのデータ取得出来てない事件
execute \
unless data storage reizo_mcfunc_engin:mob Register run \
function reizo_erros:fail_data_get {Data:"Register(init)"}

# お名前つけます。
execute \
if data storage reizo_mcfunc_engin:mob Register.Name run \
data modify entity @s CustomName set from storage reizo_mcfunc_engin:mob Register.Name

# 体力設定！
execute \
if data storage reizo_mcfunc_engin:mob Register.Health run \
data modify entity @s Health set from storage reizo_mcfunc_engin:mob Register.Health

# 装備類
function reizo_mcfunc_engin:asset/mob/.manager/set_data/init/equipments

# 死んだときのアイテムはどうなるか。
execute \
if data storage reizo_mcfunc_engin:mob {Register:{DethItem_Empty:1b}} run \
data modify entity @s DeathLootTable set value "minecraft:empty"

# フィールドが存在しているのならフィールドをコピーする。
execute \
if data storage reizo_mcfunc_engin:mob Field run \
data modify entity @s data.Field set from storage reizo_mcfunc_engin:mob Field

# キャッシュを作成
execute if data storage reizo_mcfunc_engin:mob Register.Extends run function reizo_mcfunc_engin:asset/mob/.manager/set_data/init/cache

#> dataにして持っていきたいものがあるんだ。
    # Flammable
    data modify entity @s data.Registry.Flammable set from storage reizo_mcfunc_engin:mob Register.Flammable
    # Extends
    data modify entity @s data.Registry.Extends set from storage reizo_mcfunc_engin:mob Register.Extends