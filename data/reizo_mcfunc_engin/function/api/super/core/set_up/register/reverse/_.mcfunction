#> reizo_mcfunc_engin:api/super/core/set_up/register/reverse/_
#
# 
#
# @within function reizo_mcfunc_engin:api/super/core/set_up/register/reverse/check

# 退避したRegisterを解放
function reizo_mcfunc_engin:asset/.manager/common/context/register/pop

# Inに移動
data modify storage reizo_libs:_ In append from storage reizo_mcfunc_engin:context Register.Extends

# ライブラリ使用
function reizo_libs:array/reverse

# データ移動
data modify storage reizo_mcfunc_engin:context Register.Extends set from storage reizo_libs:_ Out[-1]

# お掃除
data remove storage reizo_libs:_ Out

# Registerを退避する。
function reizo_mcfunc_engin:asset/.manager/common/context/register/stash