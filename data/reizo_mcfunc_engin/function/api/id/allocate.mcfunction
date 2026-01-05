#> reizo_mcfunc_engin:api/id/allocate
#
# 実行者にスコアIDを割り当てる。
#
# @api

# Coreを一つ上げる
scoreboard players add $Core reizo_mcfunc_Engin.ScoreID 1

# 実行者にスコアを割り当て
scoreboard players operation @s reizo_mcfunc_Engin.ScoreID = $Core reizo_mcfunc_Engin.ScoreID