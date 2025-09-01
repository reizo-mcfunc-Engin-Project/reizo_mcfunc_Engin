#> reizo_mcfunc_engin:asset/mob/.manager/data_adaptation/tick
#
# 常時のデータ適応
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/_

# データを取得(今のところMobはregistryを持っていないためregistryは、貰わない)
execute \
if data entity @s data.Register run \
data modify storage reizo_mcfunc_engin:mob Register set from entity @s data.Register
# data modify storage reizo_mcfunc_engin:mob Registry set from entity @s data.Registry

# まさかのデータ取得無理でした。
execute \
unless data storage reizo_mcfunc_engin:mob Register run \
function reizo_mcfunc_engin:error/fail_data_get {Data:"Register"}

# 燃えるかどうか。
execute \
if data storage reizo_mcfunc_engin:mob {Register:{Flammable:0b}} run \
data modify entity @s Fire set value -255

# 何かしら継承している！
execute \
if data storage reizo_mcfunc_engin:mob Register.Extends run \
function reizo_mcfunc_engin:asset/mob/.manager/data_adaptation/extends/tick

# データリセット
# data remove storage reizo_mcfunc_engin:mob Registry
data remove storage reizo_mcfunc_engin:mob Register