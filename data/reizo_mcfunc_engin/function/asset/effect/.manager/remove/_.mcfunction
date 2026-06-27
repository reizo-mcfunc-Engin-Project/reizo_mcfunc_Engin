#> reizo_mcfunc_engin:asset/effect/.manager/remove/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/tick/foreach

# メソッドの呼び出し
function reizo_mcfunc_engin:asset/effect/.manager/remove/run.m with storage reizo_mcfunc_engin:context Args

# データが残るなら再帰
execute if data storage reizo_mcfunc_engin:effect Effects[0] run function reizo_mcfunc_engin:asset/effect/.manager/tick/foreach