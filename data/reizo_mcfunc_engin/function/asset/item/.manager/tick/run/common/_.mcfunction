#> reizo_mcfunc_engin:asset/item/.manager/tick/run/common/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/run/**

# 継承情報があるなら継承元の動作を呼び出す。
execute \
if data storage reizo_mcfunc_engin:item _.Registry.Extends run \
function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/extends

# 実行
function reizo_mcfunc_engin:asset/item/.manager/tick/run.m with storage reizo_mcfunc_engin:item _

# お掃除
data remove storage reizo_mcfunc_engin:item _