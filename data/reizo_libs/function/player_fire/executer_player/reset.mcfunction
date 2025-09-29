#> reizo_libs:player_fire/executer_player/reset
#
# 
#
# @within reizo_libs:player_fire/executer_player/tp

# ノクバ耐性リセット
attribute @p[tag=reizo_mcfunc_Engin.PFire.Executer] knockback_resistance base reset

# スライムをめっちゃ上に
tp @n[tag=reizo_mcfunc_Engin.PFire.On_Fire,type=slime] ~ ~1000 ~

# Tag剥奪
tag @p[tag=reizo_mcfunc_Engin.PFire.Executer] remove reizo_mcfunc_Engin.PFire.Executer