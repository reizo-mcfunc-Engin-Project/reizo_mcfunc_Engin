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

# もし自分のファイルが無かったら継承元のファイルを呼び出す。
    execute unless data storage reizo_mcfunc_engin:item {Implement:1b} run function reizo_mcfunc_engin:asset/item/.manager/give/super
    data remove storage reizo_mcfunc_engin:item Implement

# Init処理
execute as @e[tag=reizo_mcfunc_Engin.Item.Init,type=item] at @s run \
function reizo_mcfunc_engin:asset/item/.manager/init/_