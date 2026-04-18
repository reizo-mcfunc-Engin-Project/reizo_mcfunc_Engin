#> reizo_mcfunc_engin:api/extends/core/rerun/pop_type
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/core/rerun/_.m

# 取得
data modify storage reizo_mcfunc_engin:api Args.Extends.Type set from storage reizo_mcfunc_engin:api Extends.TypeStash

# お掃除
execute unless data storage reizo_mcfunc_engin:api Extends.IsFirstExtends[-1] run data remove storage reizo_mcfunc_engin:api Extends.TypeStash