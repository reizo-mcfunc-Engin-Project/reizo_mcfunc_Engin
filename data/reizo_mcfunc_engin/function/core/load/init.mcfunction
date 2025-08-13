#> reizo_mcfunc_engin:core/load/init
#
# 俺、Init処理
#
# @within function reizo_mcfunc_engin:core/load/_

# フォースロード！
forceload add 0 0

# team作成
team add NoCol
team modify NoCol collisionRule never

# 値がNullなら初期化
execute \
unless score $Core reizo_mcfunc_Engin.ScoreID matches -2147483648..2147483647 run \
scoreboard players set $Core reizo_mcfunc_Engin.ScoreID -2147483648

# 完了通告
tellraw @a [{"text":"reizo_mcfunc_Enginが、"},{"text":"DownLoad",color:"aqua",hover_event:{action:"show_text",value:{text:"サンキューな！"}}},{"text":"されました。"}]
playsound ui.toast.challenge_complete player @a ~ ~ ~ 100 1.5 1

# 四角形製作用のObject
execute \
unless entity @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.CubeParticle,type=block_display] run \
function reizo_mcfunc_engin:asset/object/.manager/summon/run.m {ID:"0002.cube_particle",namespace:"reizo_mcfunc_engin"}