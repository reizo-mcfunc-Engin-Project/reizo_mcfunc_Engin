#> reizo_mcfunc_engin:asset/tools/0001.check_point/used/kill/_
#
# kill!
#
# @

kill @n[tag=reizo_mcfunc_Engin.Object,tag=reizo_mcfunc_Engin.Object.CheckPointMarker,type=marker]

# 音
playsound entity.player.attack.knockback

# 言葉でお知らせ。
tellraw @s [{"text": "チェックポイントが","color": "white"},{"text": "削除","color": "red"},{"text": "されました。","color": "white"}]