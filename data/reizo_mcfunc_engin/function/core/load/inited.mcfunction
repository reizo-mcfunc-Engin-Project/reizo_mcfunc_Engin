#> reizo_mcfunc_engin:core/load/inited
#
# 
#
# @within function reizo_mcfunc_engin:core/load/_

# お知らせ！
playsound entity.player.levelup player @a ~ ~ ~ 100 2 1
tellraw @a {"text":"リロード完了！",hover_event:{action:"show_text",value:[{"text":"呼び出し元:"},{"text":"reizo_mcfunc_Engin",color:"aqua"}]}}