#> reizo_mcfunc_engin:api/extends/core/fail
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/core/foreach.m

# 言葉で出してくれる
tellraw @a {"text":"Finalクラスは継承できません。",color:"red"}

# お掃除
    data remove storage reizo_mcfunc_engin:api Args.Extends
    data remove storage reizo_mcfunc_engin:context Register