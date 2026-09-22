#> reizo_mcfunc_engin:asset/.manager/common/context/data/push
#
# 
#
# @public

# データ取得
data modify storage reizo_mcfunc_engin:context data set from entity @s data

# 不要データ削除
    data remove storage reizo_mcfunc_engin:context data.Args
    data remove storage reizo_mcfunc_engin:context data.this