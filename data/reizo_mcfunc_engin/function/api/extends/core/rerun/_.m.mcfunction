#> reizo_mcfunc_engin:api/extends/core/rerun/_.m
#
# 
#
# @within function reizo_mcfunc_engin:api/extends/core/foreach.m

# 最初の継承であるのならTypeを退避させておく
execute if data storage reizo_mcfunc_engin:api Extends.IsFirstExtends[-1]._{_:1b} run data modify storage reizo_mcfunc_engin:api Extends.TypeStash set from storage reizo_mcfunc_engin:api Args.Extends.Type

# 最初の継承でないことを示す
data modify storage reizo_mcfunc_engin:api Extends.IsFirstExtends[-1]._._ set value 0b

# 実行
function reizo_mcfunc_engin:api/extends/_.m with storage reizo_mcfunc_engin:api Args.Extends

# 退避されたTypeがあるのなら取り出す
execute if data storage reizo_mcfunc_engin:context Extends.TypeStash run function reizo_mcfunc_engin:api/extends/core/rerun/pop_type

# Push
$function reizo_mcfunc_engin:asset/$(Type)/.manager/context/register/push