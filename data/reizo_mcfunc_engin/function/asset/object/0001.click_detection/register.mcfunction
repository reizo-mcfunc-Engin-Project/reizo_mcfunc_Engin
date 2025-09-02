#> reizo_mcfunc_engin:asset/object/0001.click_detection/register
#
# クリック検知用インタラクションの登録処理。
#
# @within function reizo_mcfunc_engin:asset/object/.manager/register/run.m

#> データ登録
    # 継承(オプション) String型
    data modify storage reizo_mcfunc_engin:object Register.Extends append value "super.particle"
    # data modify storage reizo_mcfunc_engin:object Register.Extends append value "super.particle_2"
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:object Register.Final set value 1b
    # 継承されることを前提とした、抽象的なObjectであるか。
    data modify storage reizo_mcfunc_engin:object Register.IsAbstract set value 0b
        # 自分が継承されることを前提とした、抽象的なObjectでなく、何かしら継承しているなら、継承処理を叩く
        execute \
        if data storage reizo_mcfunc_engin:object Register{IsAbstract:0b} \
        if data storage reizo_mcfunc_engin:object Register.Extends run \
        function reizo_mcfunc_engin:asset/object/.manager/register/set_data/extends/_
    # 動くことを許すか？ boolean型
    data modify storage reizo_mcfunc_engin:object Register.Allow_Movement set value 1b