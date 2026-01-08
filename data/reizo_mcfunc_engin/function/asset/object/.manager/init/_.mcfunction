#> reizo_mcfunc_engin:asset/object/.manager/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/summon

#> 継承している場合、データのみはデフォルトで受け継ぐため、ここに動作を記す。
    # Registerの退避
    function reizo_mcfunc_engin:asset/.manager/common/context/register/stash
    # 登録処理の親クラス
    execute if data storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends run function reizo_mcfunc_engin:asset/object/.manager/register/extends
    # Registerを戻す
    function reizo_mcfunc_engin:asset/.manager/common/context/register/pop

# IDと名前空間から指定したObjectのInit処理呼び出し
function reizo_mcfunc_engin:asset/object/.manager/init/run.m with storage reizo_mcfunc_engin:object

# 多段継承対策のために一度Init処理を呼び出すファイル内でRegisterを消去したためcontextから読み込む。
data modify storage reizo_mcfunc_engin:object Register set from storage reizo_mcfunc_engin:context Register

#> ID,namespaceをdataに
    # IDをコピー
    data modify entity @s data.Object.ID set from storage reizo_mcfunc_engin:object ID
    # namespaceコピー
    data modify entity @s data.Object.namespace set from storage reizo_mcfunc_engin:object namespace

# 登録したデータを適応
function reizo_mcfunc_engin:asset/object/.manager/set_data/init/_

# お掃除
tag @s remove reizo_mcfunc_Engin.Object.Init