#> reizo_mcfunc_engin:api/extends/core/foreach/multilevel_inheritance/_
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/foreach.m

# まずはOutのデータをコピー
data modify storage reizo_mcfunc_engin:api Extends.foreach.MultilevelInheritance.Copy set from storage reizo_mcfunc_engin:api Out.Register.Extends

# ゲットしたデータを別けていく。
function reizo_mcfunc_engin:api/extends/core/foreach/multilevel_inheritance/foreach