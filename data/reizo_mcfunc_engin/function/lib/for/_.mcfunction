#> reizo_mcfunc_engin:lib/for/_
#
# 
#
# @public

# 実行するfunction
data modify storage reizo_mcfunc_engin:lib For.Run_func set from storage reizo_mcfunc_engin:lib In.For.func

# 実行回数
execute \
store result score $For.LoopCount reizo_mcfunc_Engin.Temp run \
data get storage reizo_mcfunc_engin:lib In.For.LoopCount

# 0なら終わり。
execute \
if score $For.LoopCount reizo_mcfunc_Engin.Temp matches ..0 run \
return run function reizo_mcfunc_engin:lib/for/end

# 再帰開始
function reizo_mcfunc_engin:lib/for/loop.m with storage reizo_mcfunc_engin:lib For