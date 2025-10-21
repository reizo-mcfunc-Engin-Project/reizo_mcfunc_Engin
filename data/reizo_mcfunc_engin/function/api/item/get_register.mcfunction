#> reizo_mcfunc_engin:api/item/get_register
#
# ItemのRegisterをAPIに移動
#
# @api

# Registerをコピー
data modify storage reizo_mcfunc_engin:api Out.Register set from storage reizo_mcfunc_engin:item Register

# 元のRegisterはもういらない。
data remove storage reizo_mcfunc_engin:item Register