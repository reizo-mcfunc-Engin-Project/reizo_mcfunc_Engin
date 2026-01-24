#> reizo_mcfunc_engin:api/super/core/set_up/register/run.m
#
# 
#
# @within function reizo_mcfunc_engin:api/super/core/set_up/register/_

# 登録
$function reizo_mcfunc_engin:asset/$(Type)/.manager/register/run.m with storage reizo_mcfunc_engin:api Super.data

# RegisterのPush
$function reizo_mcfunc_engin:asset/$(Type)/.manager/context/register/push

# Finalが付いていることを検知
execute if data storage reizo_mcfunc_engin:context Register{Final:1b} run return run function reizo_mcfunc_engin:api/super/core/set_up/register/fail

# 多段継承
execute unless data storage reizo_mcfunc_engin:api Args.Super.Extends[0].IsFirstExtend{_:0b} if data storage reizo_mcfunc_engin:context Register.Extends run return run function reizo_mcfunc_engin:api/super/core/set_up/register/mi/_

# リバース
    # Len取得
    execute store result score $API.Super.SetUp.Register.Len reizo_mcfunc_Engin.Temp run data get storage reizo_mcfunc_engin:api Args.Super.Extends
    # 残り継承回数が一回で、Register内に継承情報が存在しない場合はリバース
    execute if score $API.Super.SetUp.Register.Len reizo_mcfunc_Engin.Temp matches 1 run function reizo_mcfunc_engin:api/super/core/set_up/register/reverse
    # お掃除
    scoreboard players reset $API.Super.SetUp.Register.Len reizo_mcfunc_Engin.Temp

# Registerのpull
$function reizo_mcfunc_engin:asset/$(Type)/.manager/context/register/pull

# 適応
$function reizo_mcfunc_engin:asset/$(Type)/.manager/set_data/init/_