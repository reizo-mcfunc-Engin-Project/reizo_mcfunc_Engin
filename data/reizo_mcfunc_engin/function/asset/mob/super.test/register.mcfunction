#> reizo_mcfunc_engin:asset/mob/super.test/register
#
# 産国スタレジスタ(???)
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/run.m

#> データ登録
    # 継承(オプション) String型
    # data modify storage reizo_mcfunc_engin:mob Register.Extends append value {ID:"",namespace:""}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:mob Register.IsAbstract set value 1b
    # 名前 String型
    data modify storage reizo_mcfunc_engin:mob Register.Name set value "お手本Testマン"
    # 体力はどれぐらい？ Float型
    # data modify storage reizo_mcfunc_engin:mob Register.Health set value 1.0f
    # 持っているアイテム String型
        # head
        # data modify storage reizo_mcfunc_engin:mob Register.Head set value {id:""}
        # chest
        data modify storage reizo_mcfunc_engin:mob Register.Chest set value {id:"netherite_chestplate"}
        # legs
        # data modify storage reizo_mcfunc_engin:mob Register.Legs set value {id:""}
        # feet
        # data modify storage reizo_mcfunc_engin:mob Register.Feet set value {id:""}
        # main_hand
        data modify storage reizo_mcfunc_engin:mob Register.main_hand set value {id:"iron_axe"}
        # off_hand
        # data modify storage reizo_mcfunc_engin:mob Register.off_hand set value {id:""}
    # 大きさはどれくらい？ Max = 16.0d
    data modify storage reizo_mcfunc_engin:mob Register.Scale set value 1.1d
    # アイテムを落とさないか？ boolean型
    data modify storage reizo_mcfunc_engin:mob Register.DethItem_Empty set value 1b
    # 燃えるかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:mob Register.Flammable set value 0b