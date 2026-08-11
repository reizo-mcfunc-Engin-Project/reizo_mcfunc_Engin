#> reizo_mcfunc_engin:asset/item/0002.merge_lore/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    data modify storage reizo_mcfunc_engin:item Register.Extends append value {ID:"0001.abstract_item",namespace:"reizo_mcfunc_engin"}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b

#> フィールド
    # 除外したいクラス
    # data modify storage reizo_mcfunc_engin:item Field.Merge.Lore.classBlockList append value {ID:"",namespace:""}