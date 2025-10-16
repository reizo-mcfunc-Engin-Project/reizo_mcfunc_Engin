#> reizo_mcfunc_engin:asset/item/.manager/tick/_
#
# 
#
# @within function reizo_mcfunc_engin:core/tick/player/_

# Itemは、基本的にUserが扱う、マップ等をプレイするためアイテムである。
# このアイテムは、武器や、採掘など、製作したマップ等を有意義に、又は進めるために使用される物である。

# 継承情報があるなら継承元の動作を呼び出す。
execute \
if data storage reizo_mcfunc_engin:_ Item.Both.Extends run \
function reizo_mcfunc_engin:asset/item/.manager/tick/extends

# アドレスを使い実行！ここはBothだけ。
function reizo_mcfunc_engin:asset/item/.manager/tick/run.m with storage reizo_mcfunc_engin:_ Item.Both