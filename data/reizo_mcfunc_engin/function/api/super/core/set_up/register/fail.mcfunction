#> reizo_mcfunc_engin:api/super/core/set_up/register/fail
#
# 
#
# @within function reizo_mcfunc_engin:api/super/core/set_up/register/_

tellraw @a {"text":"Finalクラスは継承できません。",color:"red"}
data remove storage reizo_mcfunc_engin:api Super
data remove storage reizo_mcfunc_engin:api Args.Super
data remove storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends[-1]