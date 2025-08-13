#> reizo_mcfunc_engin:asset/object/0001.click_detection/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/object/.manager/register/run.m

# OMD呼び出し
function #oh_my_dat:please

#> データ登録
    # 継承(オプション) String型
    # data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Extends append value "super.particle"
    # data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Extends append value "super.particle_2"
    # 継承されないかどうか。 boolean型
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Final set value 1b
    # 動くことを許すか？ boolean型
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Allow_Movement set value 1b