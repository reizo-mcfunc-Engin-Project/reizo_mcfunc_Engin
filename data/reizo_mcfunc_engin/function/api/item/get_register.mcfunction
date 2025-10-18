#> reizo_mcfunc_engin:api/item/get_register
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/init/extends

# Registerをコピー
data modify storage reizo_mcfunc_engin:api Out.Register set from storage reizo_mcfunc_engin:item Register

# 元のRegisterはもういらない。
data remove storage reizo_mcfunc_engin:item Register