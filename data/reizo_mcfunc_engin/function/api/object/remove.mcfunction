#> reizo_mcfunc_engin:api/object/remove
#
# Objectのremove処理
#
# @api

# 実行者がObject以外なら失敗
execute \
unless entity @s[tag=reizo_mcfunc_Engin.Object] run \
return run tellraw @a [{"text":"このEntity",color:"red"},{"text":"は、",color:"red"},{"text":"Object",color:"red",hover_event:{action:"show_text",value:"RMEで作られたObject,reizo_mcfunc_engin:asset/object/.manager/tick/_に説明文あり。"}},{"text":"ではありません！",color:"red"}]

# 退避
function reizo_mcfunc_engin:asset/.manager/common/context/data/stash

# IDと名前空間から死亡処理を呼び出し
    data modify storage reizo_mcfunc_engin:context data set from entity @s data
    function reizo_mcfunc_engin:asset/object/.manager/remove/run.m with storage reizo_mcfunc_engin:context data

# もし自分のファイルが無かったら継承元のファイルを呼び出す。
    execute if data storage reizo_mcfunc_engin:context data.Registry.Extends unless data storage reizo_mcfunc_engin:object {Implement:1b} run function reizo_mcfunc_engin:api/super/_.m {Type:"object",Method:"remove/_"}
    data remove storage reizo_mcfunc_engin:object Implement

# 解放
function reizo_mcfunc_engin:asset/.manager/common/context/data/pop