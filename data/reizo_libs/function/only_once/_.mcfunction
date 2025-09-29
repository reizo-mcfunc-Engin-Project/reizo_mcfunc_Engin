#> reizo_libs:only_once/_
#
# 一回だけ実行させてくれ！
#
# @public

# ストレージの初期値を作成
$execute \
unless data storage reizo_mcfunc_engin:lib OnlyOnce.$(func) run \
data modify storage reizo_mcfunc_engin:lib OnlyOnce.$(func) set value 0b

# 自分の動かしたいfuncを実行
$execute \
if data storage reizo_mcfunc_engin:lib \
{\
OnlyOnce:\
    {\
    "$(func)":0b\
    }\
} run \
function $(func)

# 終わったら1bにする。
$data modify storage reizo_mcfunc_engin:lib OnlyOnce.$(func) set value 1b