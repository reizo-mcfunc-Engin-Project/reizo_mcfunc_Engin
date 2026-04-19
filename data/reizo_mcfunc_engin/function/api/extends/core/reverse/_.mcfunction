#> reizo_mcfunc_engin:api/extends/core/reverse/_
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/_.m

# 必要なデータを取得する
data modify storage reizo_mcfunc_engin:api Extends.Reverse.data set from storage reizo_mcfunc_engin:context Register.Extends

# 分けて実行
function reizo_mcfunc_engin:api/extends/core/reverse/foreach

# お掃除
data remove storage reizo_mcfunc_engin:api Extends.Reverse