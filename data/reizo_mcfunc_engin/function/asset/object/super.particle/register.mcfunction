#> 
#
# 
#
# @

#> データ登録
    # 継承(オプション) String型
    # data modify entity @s data.Register.Extends append value "super.particle"
    # 継承されないかどうか。 boolean型
    data modify entity @s data.Register.Final set value 0b
    # 動くことを許すか？ boolean型
    data modify entity @s data.Register.Allow_Movement set value 1b