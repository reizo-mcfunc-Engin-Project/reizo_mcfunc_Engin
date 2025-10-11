#> reizo_mcfunc_engin:api/mob/remove
#
# 実行したMobの死亡処理を持ってくる。
#
# @api

# 実行者がMobではないなら失敗
execute \
unless entity @s[tag=reizo_mcfunc_Engin.Mob] run \
return run tellraw @a [{"text":"このEntity",color:"red"},{"text":"は、",color:"red"},{"text":"Mob",color:"red",hover_event:{action:"show_text",value:"RMEで作られたMob,既存のmobではない。"}},{"text":"ではありません！",color:"red"}]

# IDと名前空間から死亡処理を呼び出し
function reizo_mcfunc_engin:asset/mob/.manager/remove/run.m with entity @s data.Mob