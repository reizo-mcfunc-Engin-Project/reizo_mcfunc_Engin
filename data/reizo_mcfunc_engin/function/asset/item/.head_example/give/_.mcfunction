#> reizo_mcfunc_engin:asset/item/.head_example/give/_
#
# Itemの取得処理
#
# @within function reizo_mcfunc_engin:asset/item/.manager/run.m

# 元となるアイテムを召喚
summon item ~ ~ ~ {Item:{id:"player_head",components:{profile:{name:"Lamnead"},equippable:{slot:"head"}}},Tags:["reizo_mcfunc_Engin.Item.Init","reizo_mcfunc_Engin.Item"]}