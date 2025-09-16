#> reizo_mcfunc_engin:core/install/init
#
# インストール通告をしてくれる。
#
# @within function reizo_mcfunc_engin:core/install/check

# フォースロード！
forceload add 0 0

# team作成
team add NoCol
team modify NoCol collisionRule never

# 完了通告
tellraw @a [{"text":"reizo_mcfunc_Enginが、"},{"text":"DownLoad",color:"aqua",hover_event:{action:"show_text",value:{text:"サンキューな！"}}},{"text":"されました。"}]
playsound ui.toast.challenge_complete player @a ~ ~ ~ 100 1.5 1

# 四角形製作用のObject
execute \
unless entity @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.CubeParticle,type=armor_stand] run \
function reizo_mcfunc_engin:api/object/summon.m {ID:"0002.cube_particle",namespace:"reizo_mcfunc_engin"}

# 配列ストレージの準備
    # Wind_P_Motion
    data merge storage reizo_mcfunc_engin:lib {Wind_P_Motion:{XYZ:[0,0,0]}}