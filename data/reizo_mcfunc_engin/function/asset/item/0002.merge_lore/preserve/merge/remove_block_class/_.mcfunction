#> reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/merge/remove_block_class/_
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/merge/_

# ブロックリストを取得
data modify storage reizo_mcfunc_engin:context this.Merge.removeBlockClass.data set from storage reizo_mcfunc_engin:item Field.Merge.Lore.classBlockList

# 取得したデータから一つ一つ消していく
function reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/merge/remove_block_class/foreach

# お掃除
data remove storage reizo_mcfunc_engin:context this.Merge.removeBlockClass