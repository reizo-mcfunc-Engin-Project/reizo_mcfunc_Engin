#> reizo_mcfunc_engin:asset/mob/.manager/summon/summon
#
# Mobを召喚する。
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/_

# 抽象的なMobであるならこの召喚は許されない。
execute \
if predicate {condition:"value_check",value:{type:"storage",storage:"reizo_mcfunc_engin:mob",path:"Register.IsAbstract"},range:1b} run \
return run tellraw @s {"text":"抽象的なMobであるため、召喚できませんでした。","color":"red"}

# 召喚！
function reizo_mcfunc_engin:asset/mob/.manager/summon/run.m with storage reizo_mcfunc_engin:mob

# Registerの取得
data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:mob Register

# もし自分のファイルが無かったら継承元のファイルを呼び出す。
    execute if data storage reizo_mcfunc_engin:context Register.Extends unless data storage reizo_mcfunc_engin:mob {Implement:1b} run function reizo_mcfunc_engin:asset/mob/.manager/summon/super
    data remove storage reizo_mcfunc_engin:mob Implement

#> 継承している場合、データのみはデフォルトで受け継ぐため、ここに動作を記す。
    # Registerの退避
    function reizo_mcfunc_engin:asset/.manager/common/context/register/stash
    # RegisterのPush
    function reizo_mcfunc_engin:asset/mob/.manager/context/register/push
    # 登録処理の親クラス
    execute as @e[tag=reizo_mcfunc_Engin.Mob,tag=reizo_mcfunc_Engin.Mob.Init] at @s if data storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends run function reizo_mcfunc_engin:asset/mob/.manager/register/super
    # Registerを戻す
    function reizo_mcfunc_engin:asset/.manager/common/context/register/pop

# Init処理
execute as @e[tag=reizo_mcfunc_Engin.Mob,tag=reizo_mcfunc_Engin.Mob.Init] at @s run \
function reizo_mcfunc_engin:asset/mob/.manager/init/_