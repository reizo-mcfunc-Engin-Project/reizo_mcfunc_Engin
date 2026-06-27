#> reizo_mcfunc_engin:asset/effect/.manager/give/give
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/give/_

# 抽象的なEffectであるならこの召喚は許されない。
execute \
if predicate {condition:"value_check",value:{type:"storage",storage:"reizo_mcfunc_engin:effect",path:"Register.IsAbstract"},range:1b} run \
return run tellraw @s {"text":"抽象的なEffectであるため、召喚できませんでした。","color":"red"}

# 俺はEffectを持っているぞ！
tag @s add reizo_mcfunc_Engin.HasAssetEffect

# データの取得
    data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:effect Register
    data modify storage reizo_mcfunc_engin:context data.Registry.Extends set from storage reizo_mcfunc_engin:context Register.Extends

# もし自分のファイルが無かったら継承元のファイルを呼び出す。
    execute if data storage reizo_mcfunc_engin:context Register.Extends unless data storage reizo_mcfunc_engin:effect {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"effect",Method:"summon/_"}
    data remove storage reizo_mcfunc_engin:effect Implement
    data remove storage reizo_mcfunc_engin:context data.Registry.Extends

# Init処理
function reizo_mcfunc_engin:asset/effect/.manager/init/_