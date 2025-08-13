#> reizo_mcfunc_engin:error/execution
#
# こいつは実行しちゃいけないんだぞ！
#
# @public

# 言葉
tellraw @a[tag=reizo.Debug] [{"text":"Execution Error >>>",color:"red"},{"text":" 実行してはいけない",color:"white"},{"text":"Entity",color:"yellow",hover_event:{action:"show_text",value:[{"text":"実行者"},{"text":":",color:"green"},{selector:"@s"}]}},{"text":"が実行しています！",color:"white"}]

# 音
playsound block.note_block.bass player @a ~ ~ ~ 1 1 1