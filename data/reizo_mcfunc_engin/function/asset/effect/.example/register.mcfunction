#> reizo_mcfunc_engin:asset/effect/.example/register
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/register/run.m

#> 登録処理
    # 継承(オプション)
    # data modify storage reizo_mcfunc_engin:effect Register.Extends append value {ID:"",namespace:""}
    # 継承されないかどうか。 boolean型
    data modify storage reizo_mcfunc_engin:effect Register.Final set value 0b
    # 継承されることを前提とした、抽象的なMobかどうか。
    data modify storage reizo_mcfunc_engin:effect Register.IsAbstract set value 0b
    # 名前 (TextComponentsString)
    data modify storage reizo_mcfunc_engin:effect Register.Name set value {"text":"Example"}
    # 説明文 (TextComponentsString[])
    data modify storage reizo_mcfunc_engin:effect Register.Lore set value [{"text":"テスト用だヨ！"}]
    # 残り時間 Int型
    data modify storage reizo_mcfunc_engin:effect Register.Duration set value 100
    # どのトリガーを使用する？
    # data modify storage reizo_mcfunc_engin:effect Register.Trigger append value ""