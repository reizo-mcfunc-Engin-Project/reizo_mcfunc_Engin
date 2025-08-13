#> reizo_mcfunc_engin:asset/object/.manager/summon/init
#
# Object共通のInit処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/summon

# OMD呼び出し
function #oh_my_dat:please

#> ID,namespaceをOMDに
    # IDをコピー
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.ID set from storage reizo_mcfunc_engin:object ID
    # namespaceコピー
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.namespace set from storage reizo_mcfunc_engin:object namespace

# 登録しておく。
function reizo_mcfunc_engin:asset/object/.manager/register/run.m with storage reizo_mcfunc_engin:object

# 登録したデータを適応
function reizo_mcfunc_engin:asset/object/.manager/register/set_data/_

# Tag剥奪
tag @s remove reizo_mcfunc_Engin.Object.Init