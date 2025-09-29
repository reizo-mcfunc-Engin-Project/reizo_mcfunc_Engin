#> reizo_libs:abs/get/early_return/1..
#
# 
#
# @within function reizo_libs:abs/get/_

# Inの値をそのままReturnに。
data modify storage reizo_mcfunc_engin:lib Return.AbsGet set from storage reizo_mcfunc_engin:lib In.AbsGet

# スコアリセット
scoreboard players reset $AbsGet.In reizo_mcfunc_Engin.Temp