#> reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n/get_dis
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n/_

# 距離測定
execute \
if score @s reizo_mcfunc_Engin.ScoreID = @e[tag=reizo_mcfunc_Engin.Tools.GetDis.Target,limit=1] reizo_mcfunc_Engin.ScoreID \
as @s positioned as @n[tag=reizo_mcfunc_Engin.Tools.GetDis.Target] run \
function km_distance:as_to_at

#> 小数点第一位以下切り捨て
    # ライブラリ使用のために、ストレージに移行
    data modify storage reizo_mcfunc_engin:lib In.Truncate set from storage km_distance: out
    # ライブラリ使用
    function reizo_mcfunc_engin:lib/truncate/1

# 出してみる。
function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/get_n/tell.m with storage reizo_mcfunc_engin:lib Return

scoreboard players reset @n[tag=reizo_mcfunc_Engin.Tools.GetDis.Target] reizo_mcfunc_Engin.ScoreID
scoreboard players set @s reizo_mcfunc_Engin.GetDis.Get_N.UseCount 0
tag @n[tag=reizo_mcfunc_Engin.Tools.GetDis.Target] remove reizo_mcfunc_Engin.Tools.GetDis.Target
