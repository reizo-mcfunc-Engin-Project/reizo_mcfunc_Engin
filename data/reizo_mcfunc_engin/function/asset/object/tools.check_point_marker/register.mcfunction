#> reizo_mcfunc_engin:asset/object/tools.check_point_marker/register
#
# チェックポイントマーカーの登録処理
#
# @within function reizo_mcfunc_engin:asset/object/.manager/register/run.m

#> データ登録
    # 継承(オプション) String型
    # data modify entity @s data.Register.Extends append value ""
    # 継承されないかどうか。 boolean型
    data modify entity @s data.Register.Final set value 1b
    # 継承されることを前提とした、抽象的なObjectであるか。
    data modify entity @s data.Register.IsAbstract set value 0b
    # 動くことを許すか？ boolean型
    data modify entity @s data.Register.Allow_Movement set value 0b
    # TODO:データ登録もっと書いて！