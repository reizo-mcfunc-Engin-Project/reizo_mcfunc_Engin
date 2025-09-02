#> reizo_mcfunc_engin:asset/mob/super.test/register
#
# 産国スタレジスタ(???)
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/run.m

#> データ登録
    # 継承(オプション) String型
    # data modify storage reizo_mcfunc_engin:mob Register.Extends append value ""
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:mob Register.IsAbstract set value 1b
        # 何かしら継承している。
        execute \
        if data storage reizo_mcfunc_engin:mob {Register:{IsAbstract:0b}} \
        if data storage reizo_mcfunc_engin:mob Register.Extends run \
        function reizo_mcfunc_engin:asset/mob/.manager/register/set_data/extends/_
    # 名前 String型
    data modify storage reizo_mcfunc_engin:mob Register.Name set value "お手本Testマン"
    # 体力はどれぐらい？ Float型
    # data modify storage reizo_mcfunc_engin:mob Register.Health set value 1.0f
    # 持っているアイテム String型
    data modify storage reizo_mcfunc_engin:mob Register.equipment set value {chest:{id:"leather_chestplate"},mainhand:{id:"iron_axe"}}
    # 大きさはどれくらい？ Max = 16.0d
    data modify storage reizo_mcfunc_engin:mob Register.Scale set value 1.1d
    # アイテムを落とさないか？ boolean型
    data modify storage reizo_mcfunc_engin:mob Register.DethItem_Empty set value 1b
    # 燃えるかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Flammable set value 0b