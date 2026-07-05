#> reizo_mcfunc_engin:asset/effect/.manager/remove/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/effect/.manager/tick/foreach

# 汎用処理をAPI側に置いてあるので呼び出す
function reizo_mcfunc_engin:api/effect/remove

# データが残るなら再帰
execute if data storage reizo_mcfunc_engin:effect Effects[0] run function reizo_mcfunc_engin:asset/effect/.manager/tick/foreach