#> reizo_mcfunc_engin:asset/item/.empty/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:".example_super_2",namespace:"reizo_mcfunc_engin"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 1b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value {"text":"null"}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"!!"}]
    # 消費アイテム
    # ({animation: (block | bow | brush | crossbow | drink | eat | none | spear | spyglass | toot_horn),consume_seconds:(float型),has_consume_particles:(boolean型),on_consume_effects:(TextComponentsString[])})
    # data modify storage reizo_mcfunc_engin:item Register.Consumable set value {"animation":"none","consume_seconds":2147483647}
    # 動作スロット (0b..26b, mainhand, offhand, head, chest, legs, feet)
    data modify storage reizo_mcfunc_engin:item Register.Slot set value ["mainhand"]