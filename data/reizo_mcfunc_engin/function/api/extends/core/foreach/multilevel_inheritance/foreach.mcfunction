#> reizo_mcfunc_engin:api/extends/core/foreach/multilevel_inheritance/foreach
#
# 親クラスの親クラスの動作を呼び出す
#
# @within function reizo_mcfunc_engin:api/extends/core/foreach/multilevel_inheritance/_

# データを追加
    data modify storage reizo_mcfunc_engin:api Args.Extends.foreach append from storage reizo_mcfunc_engin:api Extends.foreach.MultilevelInheritance.Copy[0]
        execute \
        unless entity @s[tag=reizo_mcfunc_Engin.Item] run \
        data modify entity @s data.Registry.Extends append from storage reizo_mcfunc_engin:api Extends.foreach.MultilevelInheritance.Copy[0]
        execute \
        if entity @s[tag=reizo_mcfunc_Engin.Item] run \
        data modify entity @s Item.components."minecraft:custom_data".Item.Registry.Extends append from storage reizo_mcfunc_engin:api Extends.foreach.MultilevelInheritance.Copy[0]

# [0]削除
data remove storage reizo_mcfunc_engin:api Extends.foreach.MultilevelInheritance.Copy[0]

# まだ要素が残るなら再帰
execute \
if data storage reizo_mcfunc_engin:api Extends.foreach.MultilevelInheritance.Copy[0] run \
function reizo_mcfunc_engin:api/extends/core/foreach/multilevel_inheritance/foreach