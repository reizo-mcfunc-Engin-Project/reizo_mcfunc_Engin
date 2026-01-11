#> reizo_mcfunc_engin:api/super/core/set_up/register/run.m
#
# 
#
# @within function reizo_mcfunc_engin:api/super/core/set_up/register/_

# 登録
$function $(namespace):asset/$(Type)/.manager/register/run.m with storage reizo_mcfunc_engin:api Super.data

# RegisterのPush
$function $(namespace):asset/$(Type)/.manager/context/register/push

# Finalが付いていることを検知
execute if data storage reizo_mcfunc_engin:context Register{Final:1b} run return run function reizo_mcfunc_engin:api/super/core/set_up/register/fail

# 多段継承
execute unless data storage reizo_mcfunc_engin:api Args.Super.Extends[0].IsFirstExtend{_:0b} if data storage reizo_mcfunc_engin:context Register.Extends run return run function reizo_mcfunc_engin:api/super/core/set_up/register/mi/_

# Registerのpull
$function $(namespace):asset/$(Type)/.manager/context/register/pull

# 適応
$function $(namespace):asset/$(Type)/.manager/set_data/init/_