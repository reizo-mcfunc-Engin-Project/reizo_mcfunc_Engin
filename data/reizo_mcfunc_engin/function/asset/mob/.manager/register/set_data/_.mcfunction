#> reizo_mcfunc_engin:asset/mob/.manager/register/set_data/_
#
# 
#
# @

# OMD呼び出し
function #oh_my_dat:please

# データ取得
data modify storage reizo_mcfunc_engin:asset Register set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register

# まさかのデータ取得出来てない事件
execute \
unless data storage reizo_mcfunc_engin:asset Register run \
function reizo_mcfunc_engin:error/fail_data_get {Data:"Register"}

# お名前つけます。
execute \
if data storage reizo_mcfunc_engin:asset Register.Name run \
data modify entity @s CustomName set from storage reizo_mcfunc_engin:asset Register.Name

# 体力設定！
execute \
if data storage reizo_mcfunc_engin:asset Register.Health run \
data modify entity @s Health set from storage reizo_mcfunc_engin:asset Register.Health

# 装備！
execute \
if data storage reizo_mcfunc_engin:asset Register.equipment run \
data modify entity @s equipment set from storage reizo_mcfunc_engin:asset Register.equipment

# 大きさ変更
function reizo_mcfunc_engin:asset/mob/.manager/register/set_data/scale with storage reizo_mcfunc_engin:asset Register