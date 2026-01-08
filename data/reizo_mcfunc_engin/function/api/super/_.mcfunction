#> reizo_mcfunc_engin:api/super/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/mob/.manager/tick/_

# 必要なデータを取得
    data modify storage reizo_mcfunc_engin:api Super.data set from storage reizo_mcfunc_engin:api Args.Super
    data remove storage reizo_mcfunc_engin:api Super.data.Extends

# メソッドを叩く
function reizo_mcfunc_engin:api/super/core/foreach

# お掃除
data remove storage reizo_mcfunc_engin:api Super
data remove storage reizo_mcfunc_engin:api Args.Super