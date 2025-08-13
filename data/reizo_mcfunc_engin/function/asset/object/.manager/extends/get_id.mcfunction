
#> reizo_mcfunc_engin:asset/object/.manager/extends/get_id
#
# 配列を消し、作っていく。
#
# @

# まずは[0]を入手
data modify storage reizo_mcfunc_engin:asset Registry.Extends.ID set from storage reizo_mcfunc_engin:asset Registry.CopyExtends.ID[0]

# 継承されているMobのRegisterを呼び出し
function reizo_mcfunc_engin:asset/object/.manager/register/run.m with storage reizo_mcfunc_engin:asset Registry.Extends

# もう使わないので[0]を消す
data remove storage reizo_mcfunc_engin:asset Registry.CopyExtends.ID[0]

# まだ要素が残っているなら再帰
execute \
if data storage reizo_mcfunc_engin:asset Registry.CopyExtends.ID[0] run \
function reizo_mcfunc_engin:asset/object/.manager/extends/get_id