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

#> 継承している場合、データのみはデフォルトで受け継ぐため、ここに動作を記す。
    # Registerの取得
    data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:object Register
    # Registerの退避
    function reizo_mcfunc_engin:asset/.manager/common/context/register/stash
    # RegisterのPush
    function reizo_mcfunc_engin:asset/object/.manager/context/register/push
    # 登録処理の親クラス
    execute as @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.Init] at @s if data storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends run function reizo_mcfunc_engin:asset/object/.manager/register/super
    # Registerを戻す
    function reizo_mcfunc_engin:asset/.manager/common/context/register/pop

# 子クラスのtickファイルが存在しない場合、親クラスのtickファイルを呼び出す。
    execute if data storage reizo_mcfunc_engin:context Register.Extends unless data storage reizo_mcfunc_engin:object {Implement:1b} run function reizo_mcfunc_engin:asset/object/.manager/summon/super
    data remove storage reizo_mcfunc_engin:object Implement

# init処理
execute as @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.Init] at @s run \
function reizo_mcfunc_engin:asset/object/.manager/init/_