#> reizo_mcfunc_engin:lib/player_fire/_
#
# プレイヤーをぶち燃やす。
#
# @public

#> 実行者がプレイヤーかどうか確認。
    # プレイヤーじゃないなら早期リターン
    execute \
    if entity @s[type=!player] run \
    return run function reizo_mcfunc_engin:error/execution
    # 値がNullな時は早期リターン
    execute \
    unless score @s reizo_mcfunc_Engin.PFire_Power matches -2147483648..2147483647 run \
    return run function reizo_mcfunc_engin:error/non_set_value {ValueName:"reizo_mcfunc_Engin.PFire_Power"}
    # プレイヤーなら実行
    execute \
    if entity @s[type=player] run \
    function reizo_mcfunc_engin:lib/player_fire/executer_player/_