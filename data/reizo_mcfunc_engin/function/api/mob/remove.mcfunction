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
    data modify storage reizo_mcfunc_engin:context data set from entity @s data
    function reizo_mcfunc_engin:asset/mob/.manager/remove/run.m with storage reizo_mcfunc_engin:context data.Mob

# もし自分のファイルが無かったら継承元のファイルを呼び出す。
    execute if data storage reizo_mcfunc_engin:context data.Registry.Extends unless data storage reizo_mcfunc_engin:mob {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"mob",Method:"remove/_"}
    data remove storage reizo_mcfunc_engin:mob Implement

# お掃除
data remove storage reizo_mcfunc_engin:context data