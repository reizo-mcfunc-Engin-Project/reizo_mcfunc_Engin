#> reizo_mcfunc_engin:core/tick/player/get_data/effect/_
#
# 持っているエフェクトをoh_my_dataに格納
#
# @within function reizo_mcfunc_engin:core/tick/player/get_data/_

#> エフェクトゲット
    # 先に削除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Effect
    # エフェクトを持っているなら入手
    execute \
    if data entity @s active_effects run \
    function reizo_mcfunc_engin:core/tick/player/get_data/effect/get