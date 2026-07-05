#> reizo_mcfunc_engin:asset/effect/.manager/give/give
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/give/_

# 抽象的なEffectであるならこの召喚は許されない。
execute \
if predicate {condition:"value_check",value:{type:"storage",storage:"reizo_mcfunc_engin:effect",path:"Register.IsAbstract"},range:1b} run \
return run tellraw @s {"text":"抽象的なEffectであるため、付与できませんでした。","color":"red"}

# 俺はEffectを持っているぞ！
tag @s add reizo_mcfunc_Engin.HasAssetEffect

# Init処理
function reizo_mcfunc_engin:asset/effect/.manager/init/_