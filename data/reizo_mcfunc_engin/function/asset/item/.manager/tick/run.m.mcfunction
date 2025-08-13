#> reizo_mcfunc_engin:asset/item/.manager/tick/run.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/item/.manager/tick/_

#> 普通に引数足りなくて泣く
    # Address足りない
    execute \
    unless data storage reizo_mcfunc_engin:_ Item.Both.Address run \
    function reizo_mcfunc_engin:error/args {Args:"Address"}
    # namespace足りない
    execute \
    unless data storage reizo_mcfunc_engin:_ Item.Both.namespace run \
    function reizo_mcfunc_engin:error/args {Args:"namespace"}

# アドレスを代入、実行。
$function $(namespace):asset/item/$(Address)/tick/_