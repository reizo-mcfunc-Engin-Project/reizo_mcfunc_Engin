#> reizo_mcfunc_engin:api/extends/core/foreach/multilevel_inheritance/foreach
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/core/foreach/multilevel_inheritance/_

# データを追加
    data modify storage reizo_mcfunc_engin:api Args.Extends.foreach append from storage reizo_mcfunc_engin:api Extends.foreach.MultilevelInheritance.Copy[0]
    data modify entity @s data.Registry.Extends append from storage reizo_mcfunc_engin:api Extends.foreach.MultilevelInheritance.Copy[0]

# [0]削除
data remove storage reizo_mcfunc_engin:api Extends.foreach.MultilevelInheritance.Copy[0]

# まだ要素が残るなら再帰
execute \
if data storage reizo_mcfunc_engin:api Extends.foreach.MultilevelInheritance.Copy[0] run \
function reizo_mcfunc_engin:api/extends/core/foreach/multilevel_inheritance/foreach