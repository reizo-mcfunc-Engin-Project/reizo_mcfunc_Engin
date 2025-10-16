#> reizo_mcfunc_engin:asset/item/.manager/tick/extends
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/_

# API用のストレージに移動
data modify storage reizo_mcfunc_engin:api Args.Extends.foreach set from storage reizo_mcfunc_engin:_ Item.Both.Extends

# API起動
function reizo_mcfunc_engin:api/extends/foreach.m {Type:"item",namespace:"reizo_mcfunc_engin",func:"item/tick"}