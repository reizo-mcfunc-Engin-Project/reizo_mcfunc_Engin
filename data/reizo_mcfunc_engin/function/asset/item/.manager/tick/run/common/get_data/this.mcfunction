#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/get_data/this
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_

# データ取得
    data modify storage reizo_mcfunc_engin:context this set from storage reizo_mcfunc_engin:context data.this
    data remove storage reizo_mcfunc_engin:context data.this