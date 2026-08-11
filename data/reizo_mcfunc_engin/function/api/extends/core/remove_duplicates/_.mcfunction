#> reizo_mcfunc_engin:api/extends/core/remove_duplicates/_
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/core/foreach.m

# データ取得
data modify storage reizo_mcfunc_engin:api Extends.RemoveDuplicates.data set from storage reizo_mcfunc_engin:context Register.Extends

function reizo_mcfunc_engin:api/extends/core/remove_duplicates/foreach