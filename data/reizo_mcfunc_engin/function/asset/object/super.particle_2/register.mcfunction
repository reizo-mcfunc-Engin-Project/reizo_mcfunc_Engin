#> 
#
# 
#
# @

#> データ登録
    # 継承(オプション) String型
    # data modify storage reizo_mcfunc_engin:object Register.Extends append value "super.particle"
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:object Register.Final set value 0b
    # 継承されることを前提とした、抽象的なObjectであるか。
    data modify storage reizo_mcfunc_engin:object Register.IsAbstract set value 0b
    # 動くことを許すか？ boolean型
    data modify storage reizo_mcfunc_engin:object Register.Allow_Movement set value 1b