#> reizo_mcfunc_engin:player/tick/get_id
#
# 
#
# @within function reizo_mcfunc_engin:player/tick/_

# Coreを一つ上げる
scoreboard players add $Core reizo_mcfunc_Engin.ScoreID 1

# プレイヤーに割り当て
scoreboard players operation @s reizo_mcfunc_Engin.ScoreID = $Core reizo_mcfunc_Engin.ScoreID