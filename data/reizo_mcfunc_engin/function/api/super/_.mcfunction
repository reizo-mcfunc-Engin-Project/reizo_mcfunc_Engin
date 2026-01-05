#> reizo_mcfunc_engin:api/super/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/_

# 継承中
data modify storage reizo_mcfunc_engin:api Super.Inheriting set value 1b

# 必要なデータを取得
    data modify storage reizo_mcfunc_engin:api Super.data set from storage reizo_mcfunc_engin:api Args.Super
    data remove storage reizo_mcfunc_engin:api Super.data.Extends

# メソッドを叩く
function reizo_mcfunc_engin:api/super/core/foreach