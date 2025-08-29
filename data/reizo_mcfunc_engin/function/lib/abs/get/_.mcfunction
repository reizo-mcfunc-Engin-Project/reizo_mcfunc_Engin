#> reizo_mcfunc_engin:lib/abs/get/_
#
# 絶対値を求める、Inの値は必ず文字列に。
#
# @public

# Tempにコピー
function reizo_mcfunc_engin:lib/abs/get/conversion_string with storage reizo_mcfunc_engin:lib In

# 0じゃねぇか！
execute \
if data storage reizo_mcfunc_engin:lib {Temp:{AbsGet:"0"}} run \
return run data modify storage reizo_mcfunc_engin:lib Return.AbsGet set value "0"

# 絶対値を求めてみる。
data modify storage reizo_mcfunc_engin:lib Return.AbsGet set string storage reizo_mcfunc_engin:lib Temp.AbsGet 1