#> reizo_mcfunc_engin:asset/object/.manager/data_adaptation/tick
#
# レジスターとレジストリを覗いて見て常時Tickで設定を変更してもらう。
#
# @public

# データ取得
data modify storage reizo_mcfunc_engin:object Registry set from entity @s data.Registry
data modify storage reizo_mcfunc_engin:object Register set from entity @s data.Register

# まさかのデータ取得無理でした。
execute \
unless data storage reizo_mcfunc_engin:object Register run \
function reizo_erros:fail_data_get {Data:"Register(tick)"}

# 動いていいか？
execute \
if data storage reizo_mcfunc_engin:object {Register:{Allow_Movement:0b}} run \
function reizo_mcfunc_engin:asset/object/.manager/data_adaptation/allow_movement/tick

# 何かしら継承している！
execute \
if data storage reizo_mcfunc_engin:object Register.Extends run \
function reizo_mcfunc_engin:asset/object/.manager/data_adaptation/extends/tick

# データリセット
data remove storage reizo_mcfunc_engin:object Registry
data remove storage reizo_mcfunc_engin:object Register