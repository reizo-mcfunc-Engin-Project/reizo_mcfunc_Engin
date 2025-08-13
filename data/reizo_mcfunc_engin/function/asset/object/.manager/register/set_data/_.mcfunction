#> reizo_mcfunc_engin:asset/object/.manager/register/set_data/_
#
# Registerで設定したものを実際のObjectに適応させる。
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/init

# OMD呼び出し
function #oh_my_dat:please

# データ取得
data modify storage reizo_mcfunc_engin:object Register set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register

# まさかのデータ取得出来てない事件
execute \
unless data storage reizo_mcfunc_engin:object Register run \
function reizo_mcfunc_engin:error/fail_data_get {Data:"Register"}

# 動くことが許されないなら、最初に初期のPosを取得。
execute \
if data storage reizo_mcfunc_engin:object {Register:{Allow_Movement:0b}} run \
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Registry.InitPos set from entity @s Pos

# 何かしら継承しているなら起動
execute \
if data storage reizo_mcfunc_engin:object Register.Extends run \
function reizo_mcfunc_engin:asset/object/.manager/register/set_data/extends/_