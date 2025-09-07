#> reizo_mcfunc_engin:asset/tools/.manager/using.m
#
# 
#
# @within function reizo_mcfunc_engin:asset/tools/.manager/tick/_

# 普通に引数足りなくて泣く
    # Address足りない
    execute \
    unless data storage reizo_mcfunc_engin:_ Tool.Both.Address run \
    function reizo_mcfunc_engin:error/args {Args:"Address(Tool)"}
    # namespace足りない
    execute \
    unless data storage reizo_mcfunc_engin:_ Tool.Both.namespace run \
    function reizo_mcfunc_engin:error/args {Args:"namespace(Tool)"}

# アドレスを代入、実行。
$function $(namespace):asset/tools/$(Address)/using/_