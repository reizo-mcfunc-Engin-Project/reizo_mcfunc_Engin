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

#> 実際にデータを増やす
    # お願いOMD!
    function #oh_my_dat:please
    # データ適応
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects append value {}
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[-1] set from storage reizo_mcfunc_engin:effect Effect