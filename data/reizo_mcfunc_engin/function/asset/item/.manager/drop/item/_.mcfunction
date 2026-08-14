#> reizo_mcfunc_engin:asset/item/.manager/drop/item/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/drop/_

# データ取得
    data modify storage reizo_mcfunc_engin:context data set from entity @s Item.components."minecraft:custom_data".Item
    function reizo_mcfunc_engin:asset/item/.manager/tick/run/common/get_data/args
    data modify storage reizo_mcfunc_engin:context this set from storage reizo_mcfunc_engin:context data.Field