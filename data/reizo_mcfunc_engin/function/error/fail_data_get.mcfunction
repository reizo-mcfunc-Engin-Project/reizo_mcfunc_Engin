#> reizo_mcfunc_engin:error/fail_data_get
#
# 取りたかったデータがとれねぇ...
# @MacroInput
#   Data = 取りたかったデータ
#
# @public

# 言葉でお知らせ！
$tellraw @a[tag=reizo.Debug] [{"text":"FailDataGet Error >>>",color:"red"},{"text":" $(Data)",color:"aqua"},{"text":"が取得できません！",color:"white"}]