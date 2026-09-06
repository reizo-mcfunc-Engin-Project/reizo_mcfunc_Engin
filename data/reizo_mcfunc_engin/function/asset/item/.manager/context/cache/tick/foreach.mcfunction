#> reizo_mcfunc_engin:asset/item/.manager/context/cache/tick/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/context/cache/tick/create

# 実装されているか確認
function reizo_mcfunc_engin:asset/item/.manager/context/cache/tick/is_implement.m with storage reizo_mcfunc_engin:context Register.Extends[0]

# 作る
function reizo_mcfunc_engin:asset/.manager/common/context/cache/tick/create

# 要素が残るなら再帰
execute if data storage reizo_mcfunc_engin:context Register.Extends[0] run return run function reizo_mcfunc_engin:asset/item/.manager/context/cache/tick/foreach