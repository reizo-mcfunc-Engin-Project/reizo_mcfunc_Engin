#> reizo_mcfunc_engin:asset/tools/.manager/tick/extends
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/.manager/tick/_

# API用変数に値をコピー
data modify storage reizo_mcfunc_engin:api Args.Extends.foreach set from storage reizo_mcfunc_engin:_ Tool.Both.Extends

# API起動
function reizo_mcfunc_engin:api/extends/foreach.m {Type:"tools",namespace:"reizo_mcfunc_engin",func:"tick"}