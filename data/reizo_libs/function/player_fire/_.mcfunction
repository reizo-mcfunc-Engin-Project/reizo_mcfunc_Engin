#> reizo_libs:player_fire/_
#
# プレイヤーをぶち燃やす。
#
# @public

#> 実行者がプレイヤーかどうか確認。
    # プレイヤーじゃないなら早期リターン
    execute \
    if entity @s[type=!player] run \
    return run function reizo_erros:execution
    # 値がNullな時は早期リターン
    execute \
    unless data storage reizo_mcfunc_engin:lib In.PFire run \
    return run function reizo_erros:non_set_value {ValueName:"reizo_mcfunc_engin:lib In.PFire"}
    # プレイヤーなら実行
    execute \
    if entity @s[type=player] run \
    function reizo_libs:player_fire/executer_player/_