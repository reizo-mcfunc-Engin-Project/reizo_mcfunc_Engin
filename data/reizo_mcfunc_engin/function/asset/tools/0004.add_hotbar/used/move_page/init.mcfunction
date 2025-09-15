#> reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/init
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/_

#> Init
    # 初期配列の数は3
    data modify storage reizo_mcfunc_engin:lib In.For.LoopCount set value 3
    # 実行するfunctionは決定している。
    data modify storage reizo_mcfunc_engin:lib In.For.func set value "reizo_mcfunc_engin:asset/tools/0004.add_hotbar/used/move_page/create_list"
    # ライブラリ実行
    function reizo_mcfunc_engin:lib/for/_