#> reizo_mcfunc_engin:asset/tools/0001.check_point/used/summon/summon
#
# チェックポイントを召喚し、もう一度TPして戻ってこれるようにする動作。召喚位置も知らせる。
#
# @within function reizo_mcfunc_engin:asset/tools/0001.check_point/used/summon/_

# 召喚！
execute \
positioned as @a[scores={reizo_mcfunc_Engin.using_Item=1..}] run \
function reizo_mcfunc_engin:api/object/summon.m {ID:"tools.check_point_marker",namespace:"reizo_mcfunc_engin"}

# スコアで結びつける
execute \
positioned as @a[scores={reizo_mcfunc_Engin.using_Item=1..}] \
unless score @n[tag=reizo_mcfunc_Engin.Object,type=marker,tag=reizo_mcfunc_Engin.Object.CheckPointMarker,distance=..0.1] reizo_mcfunc_Engin.ScoreID matches -2147483648..2147483647 run \
scoreboard players operation @n[tag=reizo_mcfunc_Engin.Object,type=marker,tag=reizo_mcfunc_Engin.Object.CheckPointMarker,distance=..0.1] reizo_mcfunc_Engin.ScoreID = @s reizo_mcfunc_Engin.ScoreID

# 言葉でお知らせ！
    # まずはマーカーの座標を取得
    execute \
    if score @s reizo_mcfunc_Engin.ScoreID = @n[tag=reizo_mcfunc_Engin.Object,type=marker,tag=reizo_mcfunc_Engin.Object.CheckPointMarker,distance=..0.1] reizo_mcfunc_Engin.ScoreID \
    as @n[tag=reizo_mcfunc_Engin.Object,type=marker,tag=reizo_mcfunc_Engin.Object.CheckPointMarker,distance=..0.1] at @s run \
    function reizo_mcfunc_engin:asset/tools/0001.check_point/used/summon/get_marker_pos
    # 取得出来てないならエラー出す。
    execute \
    unless data storage reizo_mcfunc_engin:_ MarkerPos run \
    function reizo_mcfunc_engin:error/fail_data_get {Type:"マーカー",Data:"Pos"}
    # 取得出来たらマクロに代入して、tellraw。
    execute \
    if data storage reizo_mcfunc_engin:_ MarkerPos run \
    function reizo_mcfunc_engin:asset/tools/0001.check_point/used/summon/tell.m with storage reizo_mcfunc_engin:_ MarkerPos

# 帰ってこれるようにフォースロード！
forceload add ~ ~