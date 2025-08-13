#> reizo_mcfunc_engin:lib/abs_check/sys/_
#
# 絶対値を求める
#
# @within function reizo_mcfunc_engin:lib/abs_check/*

# 0以上やん！そのままで。
execute \
if score $Abs reizo_mcfunc_Engin.Temp matches 0.. \
store result storage reizo_mcfunc_engin:lib Return.Abs int 1 run \
scoreboard players get $Abs reizo_mcfunc_Engin.Temp

# 0以下...-1するぜ。
execute \
if score $Abs reizo_mcfunc_Engin.Temp matches ..0 \
store result storage reizo_mcfunc_engin:lib Return.Abs int -1 run \
scoreboard players get $Abs reizo_mcfunc_Engin.Temp

# リセット！
scoreboard players reset $Signum reizo_mcfunc_Engin.Temp