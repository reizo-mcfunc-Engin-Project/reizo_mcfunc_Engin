#> reizo_mcfunc_engin:api/mob/get_register
#
# MobのRegisterをAPIに移動
#
# @api

# Registerをコピー
data modify storage reizo_mcfunc_engin:api Out.Register set from storage reizo_mcfunc_engin:mob Register

# 元のRegisterはもういらない。
data remove storage reizo_mcfunc_engin:mob Register