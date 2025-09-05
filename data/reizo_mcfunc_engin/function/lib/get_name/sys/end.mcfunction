#> reizo_mcfunc_engin:lib/get_name/sys/end
#
# ディスプレイのkillと名前取得
#
# @within function reizo_mcfunc_engin:lib/get_name/sys/_

# 名前取得
data modify storage reizo_mcfunc_engin:lib Return.Name set from entity @e[tag=reizo_mcfunc_Engin.GetName.Display,limit=1,type=item_display] item.components."minecraft:profile".name

# お掃除
kill @e[tag=reizo_mcfunc_Engin.GetName.Display,type=item_display]