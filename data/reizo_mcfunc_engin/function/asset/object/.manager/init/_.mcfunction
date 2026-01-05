#> reizo_mcfunc_engin:asset/object/.manager/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/summon

# IDと名前空間から指定したObjectのInit処理呼び出し
function reizo_mcfunc_engin:asset/object/.manager/init/run.m with storage reizo_mcfunc_engin:object

#> ID,namespaceをdataに
    # IDをコピー
    data modify entity @s data.Object.ID set from storage reizo_mcfunc_engin:object ID
    # namespaceコピー
    data modify entity @s data.Object.namespace set from storage reizo_mcfunc_engin:object namespace

# 登録したデータを適応
function reizo_mcfunc_engin:asset/object/.manager/set_data/init/_

# お掃除
tag @s remove reizo_mcfunc_Engin.Object.Init
data remove storage reizo_mcfunc_engin:context Register