#> reizo_mcfunc_engin:api/super/core/set_up/register/mi/foreach
#
# 
#
# @within function reizo_mcfunc_engin:api/super/core/set_up/register/mi/_

# 先頭を追加
    data modify storage reizo_mcfunc_engin:api Args.Super.Extends prepend from storage reizo_mcfunc_engin:context Register.Extends[0]
    data modify storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends prepend from storage reizo_mcfunc_engin:context Register.Extends[0]

# 先頭を削除
data remove storage reizo_mcfunc_engin:context Register.Extends[0]

# 先頭が残るなら再帰
execute if data storage reizo_mcfunc_engin:context Register.Extends[0] run function reizo_mcfunc_engin:api/super/core/set_up/register/mi/foreach