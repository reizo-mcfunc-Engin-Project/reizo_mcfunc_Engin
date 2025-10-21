#> reizo_mcfunc_engin:api/object/get_register
#
# ObjectのRegisterをAPIに移動
#
# @api

# Registerをコピー
data modify storage reizo_mcfunc_engin:api Out.Register set from storage reizo_mcfunc_engin:object Register

# 元のRegisterはもういらない。
data remove storage reizo_mcfunc_engin:object Register