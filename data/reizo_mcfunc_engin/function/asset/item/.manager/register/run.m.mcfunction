#> reizo_mcfunc_engin:asset/item/.manager/register/run.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/give/_

$function $(namespace):asset/item/$(ID)/register

# RegisterをContextへ
data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:item Register