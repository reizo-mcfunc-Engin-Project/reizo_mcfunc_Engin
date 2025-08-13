#> reizo_mcfunc_engin:error/fail_entity_data_get
#
# データとれねぇじゃねぇか！
# @MacroInput
#   Data = 取りたかったデータ
#   Type = データを取りたかった対象のタイプ
#
# @public

# 言葉でお知らせ！
$tellraw @a[tag=reizo.Debug] [{"text":"FailEntityDataGet Error >>>",color:"red"},{"text":" $(Type)",color:"yellow"},{"text":"の",color:"white"},{"text":"$(Data)",color:"aqua"},{"text":"が取得できません！",color:"white"}]