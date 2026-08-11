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
function reizo_mcfunc_engin:asset/mob/.manager/summon/run.m with storage reizo_mcfunc_engin:context Args

# データの取得
    data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:mob Register
    data modify storage reizo_mcfunc_engin:context data.Registry.Extends set from storage reizo_mcfunc_engin:context Register.Extends

# もし自分のファイルが無かったら継承元のファイルを呼び出す。
    execute if data storage reizo_mcfunc_engin:context Register.Extends unless data storage reizo_mcfunc_engin:mob {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"summon/_"}
    data remove storage reizo_mcfunc_engin:mob Implement
    data remove storage reizo_mcfunc_engin:context data.Registry.Extends

# Init処理
execute as @e[tag=reizo_mcfunc_Engin.Mob,tag=reizo_mcfunc_Engin.Mob.Init,limit=1] at @s run \
function reizo_mcfunc_engin:asset/mob/.manager/init/_