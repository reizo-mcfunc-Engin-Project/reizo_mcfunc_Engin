#> reizo_mcfunc_engin:asset/object/.manager/data_adaptation/tick
#
# 
#
# @public

# OMD呼び出し
function #oh_my_dat:please

# データ取得
data modify storage reizo_mcfunc_engin:asset Registry set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Registry
data modify storage reizo_mcfunc_engin:asset Register set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register

# まさかのデータ取得無理でした。
execute \
unless data storage reizo_mcfunc_engin:asset Register run \
function reizo_mcfunc_engin:error/fail_data_get {Data:"Register"}

# 動いていいか？
execute \
if data storage reizo_mcfunc_engin:asset {Register:{Allow_Movement:0b}} run \
function reizo_mcfunc_engin:asset/object/.manager/data_adaptation/allow_movement/tick

# 何かしら継承している！
execute \
if data storage reizo_mcfunc_engin:asset Register.Extends run \
function reizo_mcfunc_engin:asset/object/.manager/data_adaptation/extends/tick

# データリセット
data remove storage reizo_mcfunc_engin:asset Registry
data remove storage reizo_mcfunc_engin:asset Register