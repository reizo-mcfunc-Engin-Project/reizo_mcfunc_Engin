#> reizo_mcfunc_engin:asset/object/.manager/summon/summon
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/summon/_

# 抽象的なObjectであるならこの召喚は許されない。
execute \
if predicate {condition:"value_check",value:{type:"storage",storage:"reizo_mcfunc_engin:object",path:"Register.IsAbstract"},range:1b} run \
return run tellraw @s {"text":"抽象的なObjectであるため、召喚できませんでした。","color":"red"}

# 召喚！
function reizo_mcfunc_engin:asset/object/.manager/summon/run.m with storage reizo_mcfunc_engin:object

# データの取得
    data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:object Register
    data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context Register.Extends

# 子クラスのファイルが存在しない場合、親クラスのファイルを呼び出す。
    execute if data storage reizo_mcfunc_engin:context Register.Extends unless data storage reizo_mcfunc_engin:object {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"object",Method:"summon/_"}
    data remove storage reizo_mcfunc_engin:object Implement

#> 継承している場合、データのみはデフォルトで受け継ぐため、ここに動作を記す。
    # Registerの退避
    function reizo_mcfunc_engin:asset/.manager/common/context/register/stash
    # RegisterのPush
    function reizo_mcfunc_engin:asset/object/.manager/context/register/push
    # 引数の取得
    data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends
    # 登録処理の親クラス
    execute as @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.Init] at @s if data storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends run function reizo_mcfunc_engin:api/super/_.m {Type:"object",Method:"register/_"}
    # Registerを戻す
    function reizo_mcfunc_engin:asset/.manager/common/context/register/pop

# init処理
execute as @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.Init] at @s run \
function reizo_mcfunc_engin:asset/object/.manager/init/_