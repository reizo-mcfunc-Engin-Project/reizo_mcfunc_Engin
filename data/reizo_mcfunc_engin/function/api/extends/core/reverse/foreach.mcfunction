#> reizo_mcfunc_engin:api/extends/core/reverse/foreach
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/_.m

# 逆に取るため先頭ではなく、最後を取得
data modify storage reizo_mcfunc_engin:api Extends.Reverse.Args set from storage reizo_mcfunc_engin:api Extends.Reverse.data[-1]

# 登録
function reizo_mcfunc_engin:api/extends/core/reverse/register.m with storage reizo_mcfunc_engin:api Args.Extends

# 先頭削除
data remove storage reizo_mcfunc_engin:api Extends.Reverse.data[-1]

# データが残るなら再帰
execute if data storage reizo_mcfunc_engin:api Extends.Reverse.data[-1] run function reizo_mcfunc_engin:api/extends/core/reverse/foreach