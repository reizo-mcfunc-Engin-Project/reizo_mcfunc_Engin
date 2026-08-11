#> reizo_mcfunc_engin:asset/item/0003.migration/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/register/run.m

#> 登録処理
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:item Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:item Register.IsAbstract set value 0b

#> フィールド
    # バージョン
    data modify storage reizo_mcfunc_engin:item Field.Version set value "v1.0.0"