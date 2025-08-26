#> reizo_mcfunc_engin:asset/object/0001.click_detection/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/register/run.m

#> データ登録
    # 継承(オプション) String型
    data modify entity @s data.Register.Extends append value "super.particle"
    # data modify entity @s data.Register.Extends append value "super.particle_2"
    # 継承されないかどうか。 boolean型
    data modify entity @s data.Register.Final set value 1b
    # 動くことを許すか？ boolean型
    data modify entity @s data.Register.Allow_Movement set value 1b