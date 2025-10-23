#> reizo_mcfunc_engin:asset/item/.example_2/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:".example_3",namespace:"reizo_mcfunc_engin"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:item Register.Name set value "テストネーム?"
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:item Register.Lore set value [{"text":"丼田"}]