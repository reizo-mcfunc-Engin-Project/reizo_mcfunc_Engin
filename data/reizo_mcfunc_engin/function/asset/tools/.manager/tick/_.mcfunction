#> reizo_mcfunc_engin:asset/tools/.manager/tick/_
#
# 俺、tool持ってるし。
#
# @within function reizo_mcfunc_engin:core/tick/player/_

# Toolは、基本的にUserが手に入れることはない。
# 製作者が、デバッグ、移動、建築などの、製作が便利になるものである。

# 普通に引数足りなくて泣く
    # Address足りない
    execute \
    unless data storage reizo_mcfunc_engin:_ Tool.Both.Address run \
    return run function reizo_mcfunc_engin:error/args {Args:"Address(Tool)"}
    # namespace足りない
    execute \
    unless data storage reizo_mcfunc_engin:_ Tool.Both.namespace run \
    return run function reizo_mcfunc_engin:error/args {Args:"namespace(Tool)"}

# アイテムを使ったら実行
execute \
if score @s reizo_mcfunc_Engin.using_Item matches 1 run \
function reizo_mcfunc_engin:asset/tools/.manager/used.m with storage reizo_mcfunc_engin:_ Tool.Both

#
execute \
if score @s reizo_mcfunc_Engin.using_Item matches 1.. run \
function reizo_mcfunc_engin:asset/tools/.manager/using.m with storage reizo_mcfunc_engin:_ Tool.Both

# アドレスを使い実行！ここはBothだけ。
function reizo_mcfunc_engin:asset/tools/.manager/tick/run.m with storage reizo_mcfunc_engin:_ Tool.Both