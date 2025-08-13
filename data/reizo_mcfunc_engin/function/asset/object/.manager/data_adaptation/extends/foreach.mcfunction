#> 
#
# 
#
# @

# よかぁ考えればnamespaceいるよね。
data modify storage reizo_mcfunc_engin:asset Object.namespace set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.namespace

# IDを代入
data modify storage reizo_mcfunc_engin:asset Object.ID set from storage reizo_mcfunc_engin:asset CopyExtends[-1][0]

# super.tick呼び出し
function reizo_mcfunc_engin:asset/object/.manager/tick/run.m with storage reizo_mcfunc_engin:asset Object

# 先頭削除
data remove storage reizo_mcfunc_engin:asset CopyExtends[-1][0]

# 要素があれば再帰
execute \
if data storage reizo_mcfunc_engin:asset CopyExtends[-1][0] run \
function reizo_mcfunc_engin:asset/object/.manager/data_adaptation/extends/foreach