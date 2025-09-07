#> reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n/tell.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n/_

$tellraw @s [{"text":"あなたがターゲットにした",color:"white"},{"text":"エンティティ",color:"yellow",hover_event:{action:"show_text",value:{selector:"@n[tag=reizo_mcfunc_Engin.Tools.GetDis.Target]"}}},{"text":"までの距離は、",color:"white"},{"text":"$(String)",color:"gold",hover_event:{action:"show_text",value:"クリックしてコピー！"},click_event:{action:"copy_to_clipboard",value:"$(String)"}},{"text":"です"}]