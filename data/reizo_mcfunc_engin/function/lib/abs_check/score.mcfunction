#> reizo_mcfunc_engin:lib/abs_check/score
#
# 絶対値を持ってくる。
#
# @public

# Tempにスコアをコピー
$scoreboard players operation $Abs reizo_mcfunc_Engin.Temp = $(Selecter) $(Obj)

# 値が0なら0を返す
execute \
if score $Abs reizo_mcfunc_Engin.Temp matches 0 \
store result storage reizo_mcfunc_engin:lib Return.Abs int 1 run \
return run function reizo_mcfunc_engin:lib/abs_check/sys/value_is_0

# ここまでこれたということは値が確実に0以上か0以下だからな!動くぜ！
function reizo_mcfunc_engin:lib/abs_check/sys/_