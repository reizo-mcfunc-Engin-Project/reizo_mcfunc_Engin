#> reizo_mcfunc_engin:asset/mob/super.test/register
#
# 産国スタレジスタ(???)
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/run.m

#> データ登録
    # 継承(オプション)
    # data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Extends set value ""
    # 継承されないかどうか。 boolean型
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Final set value 0b
    # 名前 String型
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Name set value "お手本Testマン"
    # 体力はどれぐらい？ Float型
    # data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Health set value 1.0f
    # 持っているアイテム String型
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.equipment set value {chest:{id:"leather_chestplate"},mainhand:{id:"iron_axe"}}
    # 大きさはどれくらい？ Max = 16.0d
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Scale set value 1.1d
