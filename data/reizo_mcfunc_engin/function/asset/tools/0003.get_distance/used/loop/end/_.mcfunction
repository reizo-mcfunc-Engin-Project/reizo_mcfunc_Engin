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

#> 小数点第一位以下切り捨て
    # Intに変換
    data modify storage reizo_mcfunc_engin:lib In.CheckPlaceValue set from storage km_distance: out
    # ライブラリ使用
    function reizo_mcfunc_engin:lib/check_place_value/_
    # 値を文字列に変換
        # Nullの時
        execute \
        if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:Null}} run \
        function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/end/conversion_string/null.m with storage km_distance:
        # 普通の時
        execute \
        unless data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:Null}} run \
        function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/end/conversion_string/normal.m with storage km_distance:
    # 位で消す場所を分ける
        # Nullも1とおんなじだよ～
        execute \
        if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:Null}} run \
        data modify storage reizo_mcfunc_engin:_ Tools.get_distance.out set string storage reizo_mcfunc_engin:_ Tools.get_distance.String 0 3
        # 1
        execute \
        if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:1}} run \
        data modify storage reizo_mcfunc_engin:_ Tools.get_distance.out set string storage reizo_mcfunc_engin:_ Tools.get_distance.String 0 3
        # 10
        execute \
        if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:10}} run \
        data modify storage reizo_mcfunc_engin:_ Tools.get_distance.out set string storage reizo_mcfunc_engin:_ Tools.get_distance.String 0 4
        # 100
        execute \
        if data storage reizo_mcfunc_engin:lib {Return:{CheckPlaceValue:100}} run \
        data modify storage reizo_mcfunc_engin:_ Tools.get_distance.out set string storage reizo_mcfunc_engin:_ Tools.get_distance.String 0 5

# 出た距離をチャットに出す。
function reizo_mcfunc_engin:asset/tools/0003.get_distance/used/loop/end/tell.m with storage reizo_mcfunc_engin:_ Tools.get_distance

# マーカーkill
kill @n[tag=reizo_mcfunc_Engin.Tools.GetDis.Marker,type=marker]