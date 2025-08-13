#> reizo_mcfunc_engin:asset/object/.manager/summon/run.m
#
# 
#
# @public

# ID設定
$data modify storage reizo_mcfunc_engin:asset ID set value "$(ID)"

# namespace設定
$data modify storage reizo_mcfunc_engin:asset namespace set value "$(namespace)"

# summon
function reizo_mcfunc_engin:asset/object/.manager/summon/summon