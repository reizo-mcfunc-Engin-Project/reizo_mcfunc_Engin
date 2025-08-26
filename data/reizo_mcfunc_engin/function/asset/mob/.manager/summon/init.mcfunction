#> reizo_mcfunc_engin:asset/mob/.manager/summon/init
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/summon

#> ID,namespaceをdataに
    # IDをコピー
    data modify entity @s data.Mob.ID set from storage reizo_mcfunc_engin:mob ID
    # namespaceコピー
    data modify entity @s data.Mob.namespace set from storage reizo_mcfunc_engin:mob namespace

# 登録処理
function reizo_mcfunc_engin:asset/mob/.manager/register/run.m with storage reizo_mcfunc_engin:mob

# 登録したデータを適応
function reizo_mcfunc_engin:asset/mob/.manager/register/set_data/_

# Tag剥奪
tag @s remove reizo_mcfunc_Engin.Mob.Init