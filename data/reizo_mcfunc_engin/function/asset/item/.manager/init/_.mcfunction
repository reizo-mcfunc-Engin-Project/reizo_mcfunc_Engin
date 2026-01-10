#> reizo_mcfunc_engin:asset/item/.manager/init/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/give/give

#> 継承している場合、データのみはデフォルトで受け継ぐため、ここに動作を記す。
    # Registerの退避
    function reizo_mcfunc_engin:asset/.manager/common/context/register/stash
    # 登録処理の親クラス
    execute if data storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends run function reizo_mcfunc_engin:asset/item/.manager/register/super
    # Registerを戻す
    function reizo_mcfunc_engin:asset/.manager/common/context/register/pop

# Init処理呼び出し
function reizo_mcfunc_engin:asset/item/.manager/init/run.m with storage reizo_mcfunc_engin:item

# 多段継承対策のために一度Init処理を呼び出すファイル内でRegisterを消去したためcontextから読み込む。
data modify storage reizo_mcfunc_engin:item Register set from storage reizo_mcfunc_engin:context Register

# IDとnamespaceをCustomDataへ。
    data modify entity @s Item.components."minecraft:custom_data".Item.ID set from storage reizo_mcfunc_engin:item ID
    data modify entity @s Item.components."minecraft:custom_data".Item.namespace set from storage reizo_mcfunc_engin:item namespace

# データセット
function reizo_mcfunc_engin:asset/item/.manager/set_data/init/_

# データ取得
data modify storage reizo_mcfunc_engin:context data set from entity @s Item.components."minecraft:custom_data".Item

# もし自分のファイルが無かったら継承元のファイルを呼び出す。
    execute unless data storage reizo_mcfunc_engin:item {Implement:1b} run function reizo_mcfunc_engin:asset/item/.manager/init/super
    data remove storage reizo_mcfunc_engin:item Implement

# お掃除
tag @s remove reizo_mcfunc_Engin.Item.Init
data remove storage reizo_mcfunc_engin:context data