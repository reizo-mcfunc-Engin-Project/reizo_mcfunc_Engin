#> reizo_mcfunc_engin:asset/mob/.manager/register/set_data/_
#
# 
#
# @within function
#   reizo_mcfunc_engin:asset/mob/.manager/summon/init
#   reizo_mcfunc_engin:asset/mob/.manager/register/set_data/extends/_

# まさかのデータ取得出来てない事件
execute \
unless data storage reizo_mcfunc_engin:mob Register run \
function reizo_mcfunc_engin:error/fail_data_get {Data:"Register"}

# お名前つけます。
execute \
if data storage reizo_mcfunc_engin:mob Register.Name run \
data modify entity @s CustomName set from storage reizo_mcfunc_engin:mob Register.Name

# 体力設定！
execute \
if data storage reizo_mcfunc_engin:mob Register.Health run \
data modify entity @s Health set from storage reizo_mcfunc_engin:mob Register.Health

# 装備！
execute \
if data storage reizo_mcfunc_engin:mob Register.equipment run \
data modify entity @s equipment set from storage reizo_mcfunc_engin:mob Register.equipment

# 死んだときのアイテムはどうなるか。
execute \
if data storage reizo_mcfunc_engin:mob {Register:{DethItem_Empty:1b}} run \
data modify entity @s DeathLootTable set value "reizo_mcfunc_engin:death/empty"

# 大きさ変更
function reizo_mcfunc_engin:asset/mob/.manager/register/set_data/scale.m with storage reizo_mcfunc_engin:mob Register

#> dataにして持っていきたいものがあるんだ。
    # Flammable
    data modify entity @s data.Registry.Flammable set from storage reizo_mcfunc_engin:mob Register.Flammable