#> reizo_mcfunc_engin:asset/item/.manager/give/give
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/give/_

# 抽象的なItemであるならこの召喚は許されない。
execute \
if predicate {condition:"value_check",value:{type:"storage",storage:"reizo_mcfunc_engin:item",path:"Register.IsAbstract"},range:1b} run \
return run tellraw @s {"text":"抽象的なItemであるため、取得できませんでした。","color":"red"}

# 個々の取得処理呼び出し
function reizo_mcfunc_engin:asset/item/.manager/give/run.m with storage reizo_mcfunc_engin:item

# データの取得
    data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:item Register
    data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context Register.Extends

# もし自分のファイルが無かったら継承元のファイルを呼び出す。
    execute if data storage reizo_mcfunc_engin:context Register.Extends unless data storage reizo_mcfunc_engin:item {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"give/_"}
    data remove storage reizo_mcfunc_engin:item Implement

#> 継承している場合、データのみはデフォルトで受け継ぐため、ここに動作を記す。
    # Registerの退避
    function reizo_mcfunc_engin:asset/.manager/common/context/register/stash
    # RegisterのPush
    function reizo_mcfunc_engin:asset/item/.manager/context/register/push
    # 引数の取得
    data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends
    # 登録処理の親クラス
    execute as @e[type=item,tag=reizo_mcfunc_Engin.Item,tag=reizo_mcfunc_Engin.Item.Init] at @s if data storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends run function reizo_mcfunc_engin:api/super/_.m {Type:"item",Method:"register/_"}
    # Registerを戻す
    function reizo_mcfunc_engin:asset/.manager/common/context/register/pop

# Init処理
execute as @e[tag=reizo_mcfunc_Engin.Item.Init,type=item] at @s run \
function reizo_mcfunc_engin:asset/item/.manager/init/_