#> reizo_mcfunc_engin:asset/tools/0001.check_point/used/_
#
# クリックしたときの動作。
#
# @within function reizo_mcfunc_engin:asset/tools/0001.check_point/tick/_

# なんかいないんだけど。
execute \
unless predicate reizo_mcfunc_engin:sneak \
unless entity @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.CheckPointMarker,type=marker] run \
function reizo_mcfunc_engin:asset/tools/0001.check_point/used/summon/_

#>
    #
    execute \
    unless predicate reizo_mcfunc_engin:sneak \
    if entity @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.CheckPointMarker,type=marker] \
    store success storage reizo_mcfunc_engin:_ Tools.CheckPointTool.Summon byte 1 \
    unless score @s reizo_mcfunc_Engin.ScoreID = @n[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.CheckPointMarker,type=marker] reizo_mcfunc_Engin.ScoreID
    #
    execute \
    unless predicate reizo_mcfunc_engin:sneak \
    if data storage reizo_mcfunc_engin:_ {Tools:{CheckPointTool:{Summon:1b}}} run \
    function reizo_mcfunc_engin:asset/tools/0001.check_point/used/summon/_



# 俺とIDが同じマーカーがいるじゃないか！TP!
execute \
unless predicate reizo_mcfunc_engin:sneak \
at @e[tag=reizo_mcfunc_Engin.Object,type=marker,tag=reizo_mcfunc_Engin.Object.CheckPointMarker] \
if score @s reizo_mcfunc_Engin.ScoreID = @n[tag=reizo_mcfunc_Engin.Object,type=marker,tag=reizo_mcfunc_Engin.Object.CheckPointMarker,distance=..0.1] reizo_mcfunc_Engin.ScoreID run \
function reizo_mcfunc_engin:asset/tools/0001.check_point/used/tp/_

# シフト押してそう。
execute \
if predicate reizo_mcfunc_engin:sneak \
if entity @e[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.CheckPointMarker,type=marker] \
if score @s reizo_mcfunc_Engin.ScoreID = @n[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.CheckPointMarker,type=marker] reizo_mcfunc_Engin.ScoreID run \
function reizo_mcfunc_engin:asset/tools/0001.check_point/used/kill/_