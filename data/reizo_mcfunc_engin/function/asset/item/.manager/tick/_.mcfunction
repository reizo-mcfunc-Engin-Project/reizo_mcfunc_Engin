#> reizo_mcfunc_engin:asset/item/.manager/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:core/tick/player/_

# Itemは、基本的にUserが扱う、マップ等をプレイするためアイテムである。
# このアイテムは、武器や、採掘など、製作したマップ等を有意義に、又は進めるために使用される物である。

#> 普通に引数足りなくて泣く
    # Address足りない
    execute \
    unless data storage reizo_mcfunc_engin:_ Item.Both.Address run \
    function reizo_mcfunc_engin:error/args {Args:"Address"}
    # namespace足りない
    execute \
    unless data storage reizo_mcfunc_engin:_ Item.Both.namespace run \
    function reizo_mcfunc_engin:error/args {Args:"namespace"}

# アドレスを使い実行！ここはBothだけ。
function reizo_mcfunc_engin:asset/item/.manager/tick/run.m with storage reizo_mcfunc_engin:_ Item.Both