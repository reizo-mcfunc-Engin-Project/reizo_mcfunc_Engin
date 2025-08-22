#> reizo_mcfunc_engin:lib/get_name/_
#
# プレイヤーの名前をストレージに取得
#
# @public

#> まずはプレイヤーかどうか確認
    # 違うならエラー
    execute if entity @s[type=!player] run \
    function reizo_mcfunc_engin:error/execution
    # プレイヤーなら実行
    execute if entity @s[type=player] run \
    function reizo_mcfunc_engin:lib/get_name/sys/_