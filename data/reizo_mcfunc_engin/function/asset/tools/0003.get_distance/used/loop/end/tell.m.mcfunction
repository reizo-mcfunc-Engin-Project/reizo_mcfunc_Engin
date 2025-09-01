#> reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/end/tell.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/_

$tellraw @s [{"text":"あなたの目線先の",color:"white"},{"text":"ブロック",color:"aqua"},{"text":"までの距離は、",color:"white"},{"text":"$(Truncate)",click_event:{action:"copy_to_clipboard",value:"$(Truncate)"},color:"gold",hover_event:{action:"show_text",value:"クリックして座標をコピー"}},{"text":"ブロックです。",color:"white"}]