#> reizo_mcfunc_engin:api/super/core/set_up/register/_
#
# 
#
# @within function reizo_mcfunc_engin:api/super/core/foreach

# 実行
function reizo_mcfunc_engin:api/super/core/set_up/register/run.m with storage reizo_mcfunc_engin:api Super.data

# 取得したRegisterをコピー
data modify storage reizo_mcfunc_engin:api Args.Super.Extends set from storage reizo_mcfunc_engin:context Register.Extends
data modify storage reizo_mcfunc_engin:context RegisterStackStash[-1].Value.Extends set from storage reizo_mcfunc_engin:context Register.Extends

# お掃除
data remove storage reizo_mcfunc_engin:context Register