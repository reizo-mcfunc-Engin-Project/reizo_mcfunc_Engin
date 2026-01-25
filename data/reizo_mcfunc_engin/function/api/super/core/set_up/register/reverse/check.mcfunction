#> reizo_mcfunc_engin:api/super/core/set_up/register/reverse/check
#
# 
#
# @within function reizo_mcfunc_engin:api/super/core/set_up/register/run.m

# 確認
    # Len取得
    execute store result score $API.Super.SetUp.Register.Len reizo_mcfunc_Engin.Temp run data get storage reizo_mcfunc_engin:api Args.Super.Extends
    # 継承情報が残り一つなら配列を反転する。
    execute if score $API.Super.SetUp.Register.Len reizo_mcfunc_Engin.Temp matches 1 run function reizo_mcfunc_engin:api/super/core/set_up/register/reverse/_
    # お掃除
    scoreboard players reset $API.Super.SetUp.Register.Len reizo_mcfunc_Engin.Temp