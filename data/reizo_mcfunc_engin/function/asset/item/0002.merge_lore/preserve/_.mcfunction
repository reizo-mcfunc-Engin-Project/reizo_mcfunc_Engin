#> reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/0001.abstract_item/init/_

# 取得したデータから、マージを行う
function reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/merge/_

# 最後に、マージしたデータをコンポーネントのLoreに追加する
data modify entity @s Item.components."minecraft:lore" append from storage reizo_mcfunc_engin:context this.Lore[]

# お掃除
data remove storage reizo_mcfunc_engin:context this