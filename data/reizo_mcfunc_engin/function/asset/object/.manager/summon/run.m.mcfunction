#> reizo_mcfunc_engin:asset/object/.manager/summon/run.m
#
# IDとnamespaceを設定してもらう。
#
# @public

# ID設定
$data modify storage reizo_mcfunc_engin:object ID set value "$(ID)"

# namespace設定
$data modify storage reizo_mcfunc_engin:object namespace set value "$(namespace)"

# summon
function reizo_mcfunc_engin:asset/object/.manager/summon/summon