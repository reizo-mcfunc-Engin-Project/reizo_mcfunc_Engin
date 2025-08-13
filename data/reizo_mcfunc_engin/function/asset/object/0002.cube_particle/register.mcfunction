#> reizo_mcfunc_engin:asset/object/0002.cube_particle/register
#
# function reizo_mcfunc_engin:asset/object/.manager/summon/run.m {ID:"0002.cube_particle",namespace:"reizo_mcfunc_engin"}
#
# @within function reizo_mcfunc_engin:asset/object/.manager/register/run.m

# OMD呼び出し
function #oh_my_dat:please

#> データ登録
    # 継承(オプション) String型
    # data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Extends append value ""
    # 継承されないかどうか。 boolean型
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Final set value 1b
    # 動くことを許すか？ boolean型
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Register.Allow_Movement set value 0b