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

# 子クラスのtickファイルが存在しない場合、親クラスのtickファイルを呼び出す。
    execute unless data storage reizo_mcfunc_engin:object {Implement:1b} run function reizo_mcfunc_engin:asset/object/.manager/summon/super
    data remove storage reizo_mcfunc_engin:object Implement

# init処理
execute as @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.Init] at @s run \
function reizo_mcfunc_engin:asset/object/.manager/init/_