#> reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/end/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/_

# その地点にマーカーを設置
summon marker ~ ~ ~ {Tags:["reizo_mcfunc_Engin.Tools.GetDis.Marker"]}

# 距離を計算。
execute \
as @s positioned as @n[tag=reizo_mcfunc_Engin.Tools.GetDis.Marker,type=marker] run \
function km_distance:as_to_at

# 出た距離をチャットに出す。
function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/end/tell.m with storage km_distance:

# マーカーkill
kill @n[tag=reizo_mcfunc_Engin.Tools.GetDis.Marker,type=marker]