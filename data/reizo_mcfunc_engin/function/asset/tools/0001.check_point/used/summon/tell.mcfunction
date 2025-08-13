#> reizo_mcfunc_engin:asset/tools/0001.check_point/used/summon/tell
#
# 言葉でどこにできたかお知らせ！
#
# @within function reizo_mcfunc_engin:asset/tools/0001.check_point/used/summon/_

# 言葉
$tellraw @p [{"text": "座標:","color": "yellow"},{"text": "\n$(x),$(y),$(z)","color": "green","click_event": {"action": "copy_to_clipboard","value": "$(x) $(y) $(z)"},"hover_event":{"action":"show_text","value":{"text":"クリックして座標をコピー！"}}},{"text": "にチェックポイントが設置されました。","color": "white"}]

# MarkerPosをお掃除
data remove storage reizo_mcfunc_engin:_ MarkerPos