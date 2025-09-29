#> reizo_libs:get_name/_
#
# プレイヤーの名前をストレージに取得
#
# @public

#> まずはプレイヤーかどうか確認
    # 違うならエラー
    execute if entity @s[type=!player] run \
    function reizo_erros:execution
    # プレイヤーなら実行
    execute if entity @s[type=player] run \
    function reizo_libs:get_name/sys/_