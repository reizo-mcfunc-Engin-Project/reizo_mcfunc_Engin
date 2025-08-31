#> reizo_mcfunc_engin:lib/player_fire/executer_player/_
#
# プレイヤーを燃やしてやるよ。
#
# @within function reizo_mcfunc_engin:lib/player_fire/_

# 俺が実行者
tag @s add reizo_mcfunc_Engin.PFire.Executer

# ノクバ耐性を付ける。
attribute @s knockback_resistance base set 100

# スコアをストレージに移動
execute \
store result storage reizo_mcfunc_engin:lib PFire.FirePower int 1 run \
scoreboard players get @s reizo_mcfunc_Engin.PFire_Power

# 燃やしてくれるスライム召喚
function reizo_mcfunc_engin:lib/player_fire/executer_player/summon_slime.m with storage reizo_mcfunc_engin:lib PFire

# フォースロード！
forceload add ~ ~ ~ ~

# スライムが透明化するまで待つ
schedule function reizo_mcfunc_engin:lib/player_fire/executer_player/tp 1t