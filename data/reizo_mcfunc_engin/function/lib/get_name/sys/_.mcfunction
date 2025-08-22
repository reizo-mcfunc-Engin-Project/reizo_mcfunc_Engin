#> reizo_mcfunc_engin:lib/get_name/sys/_
#
# 名前取得の動作を司る。
#
# @within function reizo_mcfunc_engin:lib/get_name/_

# Nameリセット
data remove storage reizo_mcfunc_engin:lib Return.Name

# NameGet用のディスプレイにUUIDを代入して召喚。
function reizo_mcfunc_engin:lib/get_name/sys/summon_display with entity @s

# Displayのデータを取得するために1t待つ
schedule function reizo_mcfunc_engin:lib/get_name/sys/end 1t