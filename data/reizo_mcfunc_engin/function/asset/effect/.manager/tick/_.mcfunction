#> reizo_mcfunc_engin:asset/effect/.manager/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:core/tick/_

# お願いOMD!
function #oh_my_dat:please

# 必要なデータを取得
    data modify storage reizo_libs:_ In append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects

# 先に付与したEffectが先に呼び出されるように
    function reizo_libs:array/reverse
    data modify storage reizo_mcfunc_engin:effect Effects set from storage reizo_libs:_ Out[-1]
    data remove storage reizo_libs:_ Out[-1]

# 各エフェクトの処理をする
execute if data storage reizo_mcfunc_engin:effect Effects[0] run function reizo_mcfunc_engin:asset/effect/.manager/tick/foreach

# 元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects append from storage reizo_mcfunc_engin:effect NextTickEffects[]

# 付与されているエフェクトが何もなければタグを消す
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[0] run tag @s remove reizo_mcfunc_Engin.HasAssetEffect

# お掃除
data remove storage reizo_mcfunc_engin:effect NextTickEffects