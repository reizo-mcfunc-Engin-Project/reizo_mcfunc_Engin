#> reizo_mcfunc_engin:lib/get_name/sys/_
#
# 名前取得の動作を司る。
#
# @within function reizo_mcfunc_engin:lib/get_name/_

# Nameリセット
data remove storage reizo_mcfunc_engin:lib Return.Name

# 名前取得用のディスプレイを召喚
summon item_display 0.0 0.0 0.0 {Tags:["reizo_mcfunc_Engin.GetName.Display"],item:{id:"player_head"},transformation:{right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],translation:[0.5f,1f,-0.5f]}}

# UUIDを代入
execute \
positioned 0.0 0.0 0.0 run \
data modify entity @n[tag=reizo_mcfunc_Engin.GetName.Display,type=item_display] item.components."minecraft:profile".id set from entity @s UUID

# ディスプレイがデータを適応させるまで待つ
schedule function reizo_mcfunc_engin:lib/get_name/sys/end 1t