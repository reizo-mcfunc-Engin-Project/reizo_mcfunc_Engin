#> reizo_mcfunc_engin:asset/mob/.manager/data_adaptation/tick
#
# 常時のデータ適応
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/_

# データを取得
execute \
if data entity @s data.Registry run \
data modify storage reizo_mcfunc_engin:mob Registry set from entity @s data.Registry

# まさかのデータ取得無理でした。
execute \
unless data storage reizo_mcfunc_engin:mob Registry run \
function reizo_erros:fail_data_get {Data:"Registry"}

# 燃えるかどうか。
execute \
if data storage reizo_mcfunc_engin:mob {Registry:{Flammable:0b}} run \
data modify entity @s Fire set value -255

# 何かしら継承している！
execute \
if data storage reizo_mcfunc_engin:mob Registry.Extends run \
function reizo_mcfunc_engin:asset/mob/.manager/data_adaptation/extends/tick

# データリセット
data remove storage reizo_mcfunc_engin:mob Registry