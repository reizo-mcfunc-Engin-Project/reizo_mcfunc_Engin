#> reizo_mcfunc_engin:asset/object/.manager/set_data/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/tick/_

# データ取得
data modify storage reizo_mcfunc_engin:object Registry set from entity @s data.Registry

# まさかのデータ取得無理でした。
execute \
unless data storage reizo_mcfunc_engin:object Registry run \
function reizo_erros:fail_data_get {Data:"Registry(tick)"}

# 動いていいか？
execute \
if data storage reizo_mcfunc_engin:object {Registry:{Allow_Movement:0b}} run \
function reizo_mcfunc_engin:asset/object/.manager/set_data/tick/allo_movement/_

# 何かしら継承している！
execute \
if data storage reizo_mcfunc_engin:object Registry.Extends run \
function reizo_mcfunc_engin:asset/object/.manager/set_data/tick/extends/_

# データリセット
data remove storage reizo_mcfunc_engin:object Registry