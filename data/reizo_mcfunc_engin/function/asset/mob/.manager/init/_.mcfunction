#> reizo_mcfunc_engin:asset/mob/.manager/init/_
#
# Mobの共通Init処理
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/summon

# IDとnamespaceからmobごとのInit処理呼び出し
function reizo_mcfunc_engin:asset/mob/.manager/init/run.m with storage reizo_mcfunc_engin:mob

# 多段継承対策のために一度Init処理を呼び出すファイル内でRegisterを消去したためcontextから引き出す
function reizo_mcfunc_engin:asset/mob/.manager/context/register/pull

#> ID,namespaceをdataに
    # IDをコピー
    data modify entity @s data.Mob.ID set from storage reizo_mcfunc_engin:mob ID
    # namespaceコピー
    data modify entity @s data.Mob.namespace set from storage reizo_mcfunc_engin:mob namespace

# 登録したデータを適応
function reizo_mcfunc_engin:asset/mob/.manager/set_data/init/_

# データ取得
data modify storage reizo_mcfunc_engin:context data set from entity @s data

# もし自分のファイルが無かったら継承元のファイルを呼び出す。
    execute unless data storage reizo_mcfunc_engin:mob {Implement:1b} run function reizo_mcfunc_engin:asset/mob/.manager/init/super
    data remove storage reizo_mcfunc_engin:mob Implement

# お掃除
tag @s remove reizo_mcfunc_Engin.Mob.Init
data remove storage reizo_mcfunc_engin:context data