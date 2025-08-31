#> reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n/tell.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n/_

$tellraw @s [{"text":"あなたから最寄りの",color:"white"},{"text":"エンティティ",color:"yellow",hover_event:{action:"show_text",value:{selector:"@n[distance=0.5..]"}}},{"text":"までの距離は、",color:"white"},{"text":"$(out)",color:"gold",hover_event:{action:"show_text",value:"クリックしてコピー！"},click_event:{action:"copy_to_clipboard",value:"$(out)"}},{"text":"です。"}]