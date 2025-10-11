#> reizo_mcfunc_engin:asset/mob/.manager/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/summon

# IDとnamespaceからmobごとのInit処理呼び出し
function reizo_mcfunc_engin:asset/mob/.manager/init/run.m with storage reizo_mcfunc_engin:mob

#> ID,namespaceをdataに
    # IDをコピー
    data modify entity @s data.Mob.ID set from storage reizo_mcfunc_engin:mob ID
    # namespaceコピー
    data modify entity @s data.Mob.namespace set from storage reizo_mcfunc_engin:mob namespace

# 何かしら継承している。
execute \
if data storage reizo_mcfunc_engin:mob Register.Extends run \
function reizo_mcfunc_engin:asset/mob/.manager/init/extends

# 登録したデータを適応
function reizo_mcfunc_engin:asset/mob/.manager/set_data/init/_

# Tag剥奪
tag @s remove reizo_mcfunc_Engin.Mob.Init