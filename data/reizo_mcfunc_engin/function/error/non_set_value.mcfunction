#> reizo_mcfunc_engin:error/non_set_value
#
# 値が設定されていないじゃないか！
# マクロ必須 ValueName = スコア名、Path名
#
# @public

# 言葉
$tellraw @a[tag=reizo.Debug] [{"text":"NonSetValue Error >>>",color:"red"},{"text":" 設定しなければいけない",color:"white"},{"text":"値",color:"yellow",hover_event:{action:"show_text",value:[{"text":"変数名"},{"text":":",color:"green"},{"text":"$(ValueName)"}]}},{"text":"が設定されていません！",color:"white"}]

# 音
playsound block.note_block.bass player @a ~ ~ ~ 1 1 1