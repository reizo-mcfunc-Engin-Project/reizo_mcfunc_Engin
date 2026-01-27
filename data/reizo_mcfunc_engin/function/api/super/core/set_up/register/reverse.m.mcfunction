#> reizo_mcfunc_engin:api/super/core/set_up/register/reverse.m
#
# 
#
# @within function reizo_mcfunc_engin:api/super/core/set_up/register/run.m

# これからRegisterを解放するため、現在のRegisterの退避としてpullを使用する。
$function reizo_mcfunc_engin:asset/$(Type)/.manager/context/register/pull

# 退避したRegisterを解放
function reizo_mcfunc_engin:asset/.manager/common/context/register/pop

# Inに移動
data modify storage reizo_libs:_ In append from storage reizo_mcfunc_engin:context Register.Extends

# ライブラリ使用
function reizo_libs:array/reverse

# データ移動
data modify storage reizo_mcfunc_engin:context Register.Extends set from storage reizo_libs:_ Out[-1]

# Registerを退避する。
function reizo_mcfunc_engin:asset/.manager/common/context/register/stash

# contextに反転した継承情報入れるためpushする。
$function reizo_mcfunc_engin:asset/$(Type)/.manager/context/register/push

# データ移動
data modify storage reizo_mcfunc_engin:context Register.Extends set from storage reizo_libs:_ Out[-1]

# お掃除
data remove storage reizo_libs:_ Out[-1]