#> reizo_mcfunc_engin:core/tick/player/get_id
#
# プレイヤーにIDを与える。
#
# @within function reizo_mcfunc_engin:core/tick/player/_

# Core初期値 = -2147483648
# ID割り当て範囲 = -2147483648..2147483648(整数で表すと、0..4294967296まで。)

# Coreを一つ上げる
scoreboard players add $Core reizo_mcfunc_Engin.ScoreID 1

# プレイヤーに割り当て
scoreboard players operation @s reizo_mcfunc_Engin.ScoreID = $Core reizo_mcfunc_Engin.ScoreID