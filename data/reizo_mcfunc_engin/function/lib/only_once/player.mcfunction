#> reizo_mcfunc_engin:lib/only_once/player
#
# 俺だけ一回実行させてくれ！
#
# @public

# スコア作成
$scoreboard objectives add reizo_mcfunc_Engin.OnlyOnce.$(obj) dummy

# Nullなら0に。
$execute \
unless score @s reizo_mcfunc_Engin.OnlyOnce.$(obj) matches -2147483648..2147483647 run \
scoreboard players set @s reizo_mcfunc_Engin.OnlyOnce.$(obj)

# function実行
$execute \
if score @s reizo_mcfunc_Engin.OnlyOnce.$(obj) matches 0 run \
function $(func)

# 発動条件はスコアが0になった時なので動かないように1にセットする。
$execute \
if score @s reizo_mcfunc_Engin.OnlyOnce.$(obj) matches 0 run \
scoreboard players set @s reizo_mcfunc_Engin.OnlyOnce.$(obj) 1