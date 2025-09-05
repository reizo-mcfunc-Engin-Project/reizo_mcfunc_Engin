#> reizo_mcfunc_engin:core/tick/player/reset_data
#
# データをリセット！お疲れ様！
#
# @within function reizo_mcfunc_engin:core/tick/player/_

# データを落とす。
execute \
unless data entity @s SelectedItem.components."minecraft:custom_data".Item.Address run \
data remove storage reizo_mcfunc_engin:_ Item
execute \
unless data entity @s SelectedItem.components."minecraft:custom_data".Tool.Address run \
data remove storage reizo_mcfunc_engin:_ Tool

# PlayerEffectも。
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Effect

# Tag達も
tag @s[tag=reizo_mcfunc_Engin.Click.Left] remove reizo_mcfunc_Engin.Click.Left
tag @s[tag=reizo_mcfunc_Engin.Click.Right] remove reizo_mcfunc_Engin.Click.Right