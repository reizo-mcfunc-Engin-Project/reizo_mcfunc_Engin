#> reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/merge/remove_block_class/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/merge/remove_block_class/_

# 先頭取得
data modify storage reizo_mcfunc_engin:context this.Merge.removeBlockClass.Entry set from storage reizo_mcfunc_engin:context this.Merge.removeBlockClass.data[0]

# 削除
function reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/merge/remove_block_class/remove.m with storage reizo_mcfunc_engin:context this.Merge.removeBlockClass.Entry

# お掃除
    data remove storage reizo_mcfunc_engin:context this.Merge.removeBlockClass.Entry
    data remove storage reizo_mcfunc_engin:context this.Merge.removeBlockClass.data[0]

# データが残るなら再帰
execute if data storage reizo_mcfunc_engin:context this.Merge.removeBlockClass.data[0] run function reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/merge/remove_block_class/foreach