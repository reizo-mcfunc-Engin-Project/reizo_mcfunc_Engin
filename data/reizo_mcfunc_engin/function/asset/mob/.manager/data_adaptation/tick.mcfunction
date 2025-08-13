#> reizo_mcfunc_engin:asset/mob/.manager/data_adaptation/tick
#
# 常時のデータ適応
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/_

# OMD呼び出し
function #oh_my_dat:please

# データを取得(今のところMobはregistryを持っていないためregistryは、貰わない)
execute \
if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register run \
data modify storage reizo_mcfunc_engin:mob Register set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register
# data modify storage reizo_mcfunc_engin:mob Registry set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Registry

# まさかのデータ取得無理でした。
execute \
unless data storage reizo_mcfunc_engin:mob Register run \
function reizo_mcfunc_engin:error/fail_data_get {Data:"Register"}

# 何かしら継承している！
execute \
if data storage reizo_mcfunc_engin:mob Register.Extends run \
function reizo_mcfunc_engin:asset/mob/.manager/data_adaptation/extends/tick

# データリセット
# data remove storage reizo_mcfunc_engin:mob Registry
data remove storage reizo_mcfunc_engin:mob Register