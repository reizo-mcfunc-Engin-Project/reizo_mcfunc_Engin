#> reizo_mcfunc_engin:lib/player_fire/executer_player/tp
#
# めちゃ上にスライムがいるのでプレイヤーにTPさせる。
#
# @within function reizo_mcfunc_engin:lib/player_fire/executer_player/_

# 実行者にスライムをtp
execute \
as @n[tag=reizo_mcfunc_Engin.PFire.On_Fire] at @s \
positioned ~ ~ ~ run \
tp @s @p[tag=reizo_mcfunc_Engin.PFire.Executer]

# tpしたからもう読み込まなくていい
forceload remove ~ ~ ~ ~

# 攻撃するまで待つ 索敵 = 1t 攻撃 = 1t
schedule function reizo_mcfunc_engin:lib/player_fire/executer_player/reset 2t