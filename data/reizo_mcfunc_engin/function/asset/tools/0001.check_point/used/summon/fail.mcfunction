#> reizo_mcfunc_engin:asset/tools/0001.check_point/used/summon/fail
#
# チェックポイント召喚に失敗したときの処理
#
# @within function reizo_mcfunc_engin:asset/tools/0001.check_point/used/summon/_

# 音！
playsound block.note_block.bass

# 声！
tellraw @s {"text":"地面に着いていないか、ブロックの中のため召喚できませんでした。",color:"red"}