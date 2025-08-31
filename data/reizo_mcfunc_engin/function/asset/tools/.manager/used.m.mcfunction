#> reizo_mcfunc_engin:asset/tools/.manager/used.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/.manager/tick/_

# 普通に引数足りなくて泣く
    # Address足りない
    execute \
    unless data storage reizo_mcfunc_engin:_ Item.Both.Address run \
    function reizo_mcfunc_engin:error/args {Args:"Address"}
    # namespace足りない
    execute \
    unless data storage reizo_mcfunc_engin:_ Item.Both.namespace run \
    function reizo_mcfunc_engin:error/args {Args:"namespace"}

# アドレスを代入、実行。
$function $(namespace):asset/tools/$(Address)/used/_