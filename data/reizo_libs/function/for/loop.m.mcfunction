#> reizo_libs:for/loop.m
#
# 
#
# @within function reizo_libs:for/_

# 値がもうないなら終了
execute \
if score $For.LoopCount reizo_mcfunc_Engin.Temp matches ..0 run \
function reizo_libs:for/end

# 実行
$function $(Run_func)

# スコア減らす
scoreboard players remove $For.LoopCount reizo_mcfunc_Engin.Temp 1

# 値が残るなら再帰
execute \
if score $For.LoopCount reizo_mcfunc_Engin.Temp matches 1.. run \
function reizo_libs:for/loop.m with storage reizo_mcfunc_engin:lib For