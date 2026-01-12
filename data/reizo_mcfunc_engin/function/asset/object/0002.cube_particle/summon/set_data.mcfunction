#> reizo_mcfunc_engin:asset/object/0002.cube_particle/summon/set_data
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/0002.cube_particle/summon/_

# ID,namespaceの取得
    data modify entity @s data.Object.ID set from storage reizo_mcfunc_engin:object ID
    data modify entity @s data.Object.namespace set from storage reizo_mcfunc_engin:object namespace

# データを適用する。
function reizo_mcfunc_engin:asset/object/.manager/set_data/init/_