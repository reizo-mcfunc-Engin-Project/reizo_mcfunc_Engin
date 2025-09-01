#> reizo_mcfunc_engin:asset/mob/.example/register
#
# .exampleの登録処理。
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/register/run.m

#> データ登録
    # 継承(オプション)
    data modify entity @s data.Register.Extends append value "super.test"
    # 継承されないかどうか。 boolean型
    data modify entity @s data.Register.Final set value 1b
    # 名前 String型
    data modify entity @s data.Register.Name set value "お手本ゾンビマン"
    # 体力はどれぐらい？ Float型
    # data modify entity @s data.Register.Health set value 1.0f
    # 持っているアイテム String型
    data modify entity @s data.Register.equipment set value {chest:{id:"leather_chestplate"},mainhand:{id:"iron_axe"}}
    # 大きさはどれくらい？ Max = 16.0d
    data modify entity @s data.Register.Scale set value 1.1d
    # アイテムを落とさないか？ boolean型
    data modify entity @s data.Register.DethItem_Empty set value 1b
    # 燃えるかどうか。 boolean型
    data modify entity @s data.Register.Flammable set value 0b