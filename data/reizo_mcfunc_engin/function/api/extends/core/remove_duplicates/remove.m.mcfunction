#> reizo_mcfunc_engin:api/extends/core/remove_duplicates/remove.m
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/core/remove_duplicates/check.m

# データ消去
    $data remove storage reizo_mcfunc_engin:context Register.Extends[{ID:"$(ID)",namespace:"$(namespace)"}]
    $data remove storage reizo_mcfunc_engin:context Extends.RemoveDuplicates.data[{ID:"$(ID)",namespace:"$(namespace)"}]

# データ追加
    data modify storage reizo_mcfunc_engin:context Register.Extends append from storage reizo_mcfunc_engin:api Extends.RemoveDuplicates.data[0]