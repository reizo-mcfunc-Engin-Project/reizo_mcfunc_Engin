#> reizo_mcfunc_engin:core/tick/player/reset_data
#
# データをリセット！お疲れ様！
#
# @within function reizo_mcfunc_engin:core/tick/player/_

# データを落とす。
execute \
unless data entity @s SelectedItem.components."minecraft:custom_data".Address run \
data remove storage reizo_mcfunc_engin:_ Item

# Tag達も
tag @s remove reizo_mcfunc_Engin.Click.Left
tag @s remove reizo_mcfunc_Engin.Click.Right