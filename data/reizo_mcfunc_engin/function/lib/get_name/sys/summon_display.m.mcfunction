#> reizo_mcfunc_engin:lib/get_name/sys/summon_display.m
#
# プレイヤーの頭をしたディスプレイを召喚
#
# @within function reizo_mcfunc_engin:lib/get_name/sys/_

# 召喚
$summon item_display 0.0 0.0 0.0 {Tags:["reizo_mcfunc_Engin.GetName.Display"],item:{id:"player_head",components:{profile:{id:$(UUID)}}},transformation:{right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],translation:[0.5f,1f,-0.5f]}}
