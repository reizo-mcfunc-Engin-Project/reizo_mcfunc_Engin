#> reizo_mcfunc_engin:asset/object/.manager/data_adaptation/extends/foreach
#
# スーパークラスを呼び出す...Finalがついてたら止まるぞ。
#
# @within function
#   reizo_mcfunc_engin:asset/object/.manager/data_adaptation/extends/tick
#   reizo_mcfunc_engin:asset/object/.manager/data_adaptation/extends/foreach

# よかぁ考えればnamespaceいるよね。
data modify storage reizo_mcfunc_engin:object Extends.namespace set from entity @s data.Object.namespace

# IDを代入
data modify storage reizo_mcfunc_engin:object Extends.ID set from storage reizo_mcfunc_engin:object CopyExtends[-1][0]

# Finalが1bのやつは継承が禁止されているんだ。
execute \
if data storage reizo_mcfunc_engin:object {Register:{Final:1b}} run \
return run function reizo_erros:call.super_method/final

# super.tick呼び出し
function reizo_mcfunc_engin:asset/object/.manager/tick/run.m with storage reizo_mcfunc_engin:object Extends

# 先頭削除
data remove storage reizo_mcfunc_engin:object CopyExtends[-1][0]

# 要素があれば再帰
execute \
if data storage reizo_mcfunc_engin:object CopyExtends[-1][0] run \
function reizo_mcfunc_engin:asset/object/.manager/data_adaptation/extends/foreach