#> reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/merge/foreach
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/_

# 先頭取得
data modify storage reizo_mcfunc_engin:context this.Merge.Entry set from storage reizo_mcfunc_engin:context this.Merge.Extends[0]

# 登録処理を呼び出し
function reizo_mcfunc_engin:asset/item/.manager/register/run.m with storage reizo_mcfunc_engin:context this.Merge.Entry

# Loreがあればデータに追加する
execute if data storage reizo_mcfunc_engin:item Register.Lore run data modify storage reizo_mcfunc_engin:context this.Lore append from storage reizo_mcfunc_engin:item Register.Lore[]

# お掃除
    data remove storage reizo_mcfunc_engin:item Register
    data remove storage reizo_mcfunc_engin:context this.Merge.Entry
    data remove storage reizo_mcfunc_engin:context this.Merge.Extends[0]

# データが残るなら再帰
execute if data storage reizo_mcfunc_engin:context this.Merge.Extends[0] run function reizo_mcfunc_engin:asset/item/0002.merge_lore/preserve/merge/foreach