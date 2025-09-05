#> reizo_mcfunc_engin:lib/abs/get/_
#
# 絶対値を求める、Inの値は必ず文字列に。
#
# @public

# スコアに移動
execute \
store result score $AbsGet.In reizo_mcfunc_Engin.Temp run \
data get storage reizo_mcfunc_engin:lib In.AbsGet

# 値が0なら終わり。
execute \
if score $AbsGet.In reizo_mcfunc_Engin.Temp matches 0 run \
return run function reizo_mcfunc_engin:lib/abs/get/early_return/0

# 1以上でも終わり。
execute \
if score $AbsGet.In reizo_mcfunc_Engin.Temp matches 1.. run \
return run function reizo_mcfunc_engin:lib/abs/get/early_return/1..

# 文字列に変換
function reizo_mcfunc_engin:lib/abs/get/conversion/string.m with storage reizo_mcfunc_engin:lib In

# 絶対値を求める。
data modify storage reizo_mcfunc_engin:lib Temp.AbsGet set string storage reizo_mcfunc_engin:lib Temp.AbsGet 1

# 求めたら数値に変換
function reizo_mcfunc_engin:lib/abs/get/conversion/num.m with storage reizo_mcfunc_engin:lib Temp

# Tempリセット
data remove storage reizo_mcfunc_engin:lib Temp.AbsGet