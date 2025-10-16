#> reizo_mcfunc_engin:asset/tools/.manager/tick/_
#
# 俺、tool持ってるし。
#
# @within function reizo_mcfunc_engin:core/tick/player/_

# Toolは、基本的にUserが手に入れることはない。
# 製作者が、デバッグ、移動、建築などの、製作が便利になるものである。

# 継承情報があるなら継承元の動作を呼び出す
execute \
if data storage reizo_mcfunc_engin:_ Tool.Both.Extends run \
function reizo_mcfunc_engin:asset/tools/.manager/tick/extends

# アドレスを使い実行！ここはBothだけ。
function reizo_mcfunc_engin:asset/tools/.manager/tick/run.m with storage reizo_mcfunc_engin:_ Tool.Both