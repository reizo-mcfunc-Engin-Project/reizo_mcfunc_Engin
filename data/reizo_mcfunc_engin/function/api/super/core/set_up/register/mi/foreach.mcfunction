#> reizo_mcfunc_engin:api/super/core/set_up/register/mi/foreach
#
# 
#
# @within function reizo_mcfunc_engin:api/super/core/set_up/register/mi/_

# データを追加
    data modify storage reizo_mcfunc_engin:api Args.Super.Extends append from storage reizo_mcfunc_engin:api Super.SetUp.Register.MI[0]
    data modify storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends append from storage reizo_mcfunc_engin:api Super.SetUp.Register.MI[0]

# 先頭消去
data remove storage reizo_mcfunc_engin:api Super.SetUp.Register.MI[0]

# 先頭が残るなら再帰
execute if data storage reizo_mcfunc_engin:api Super.SetUp.Register.MI[0] run function reizo_mcfunc_engin:api/super/core/set_up/register/mi/foreach