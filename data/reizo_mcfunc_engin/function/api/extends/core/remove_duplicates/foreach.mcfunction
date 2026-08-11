#> reizo_mcfunc_engin:api/extends/core/remove_duplicates/foreach
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/core/remove_duplicates/_

# 先頭取得
data modify storage reizo_mcfunc_engin:api Extends.RemoveDuplicates.Entry set from storage reizo_mcfunc_engin:api Extends.RemoveDuplicates.data[0]

# 重複したデータがあるかどうかわからないので一時的にそのIDと名前空間を持った情報を消去し、一つ追加する。
function reizo_mcfunc_engin:api/extends/core/remove_duplicates/remove.m with storage reizo_mcfunc_engin:api Extends.RemoveDuplicates.Entry

# お掃除
    data remove storage reizo_mcfunc_engin:api Extends.RemoveDuplicates.Entry
    data remove storage reizo_mcfunc_engin:api Extends.RemoveDuplicates.data[0]

# データが残るなら再帰
execute if data storage reizo_mcfunc_engin:api Extends.RemoveDuplicates.data[0] run function reizo_mcfunc_engin:api/extends/core/remove_duplicates/foreach