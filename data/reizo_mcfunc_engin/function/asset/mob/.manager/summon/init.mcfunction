#> reizo_mcfunc_engin:asset/mob/.manager/summon/init
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/summon

# OMD呼び出し
function #oh_my_dat:please

#> ID,namespaceをOMDに
    # IDをコピー
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Mob.ID set from storage reizo_mcfunc_engin:asset ID
    # namespaceコピー
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Mob.namespace set from storage reizo_mcfunc_engin:asset namespace

# 登録処理
function reizo_mcfunc_engin:asset/mob/.manager/register/run.m with storage reizo_mcfunc_engin:asset

# 登録したデータを適応
function reizo_mcfunc_engin:asset/mob/.manager/register/set_data/_

# Tag剥奪
tag @s remove reizo_mcfunc_Engin.Mob.Init