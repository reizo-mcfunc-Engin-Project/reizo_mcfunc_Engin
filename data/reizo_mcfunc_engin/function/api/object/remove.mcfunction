#> reizo_mcfunc_engin:api/object/remove
#
# Objectのremove処理
#
# @api

# 実行者がObject以外なら失敗
execute \
unless entity @s[tag=reizo_mcfunc_Engin.Object] run \
return run tellraw @a [{"text":"このEntity",color:"red"},{"text":"は、",color:"red"},{"text":"Object",color:"red",hover_event:{action:"show_text",value:"RMEで作られたObject,reizo_mcfunc_engin:asset/object/.manager/tick/_に説明文あり。"}},{"text":"ではありません！",color:"red"}]

# IDと名前空間から死亡処理を呼び出し
function reizo_mcfunc_engin:asset/object/.manager/remove/run.m with entity @s data.Object