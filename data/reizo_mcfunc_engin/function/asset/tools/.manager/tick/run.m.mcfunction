#> reizo_mcfunc_engin:asset/tools/.manager/tick/run.m
#
# tickメソッドを叩いてくれる。
#
# @within function reizo_mcfunc_engin:asset/tools/.manager/tick/_

# Used
$execute \
if score @s reizo_mcfunc_Engin.using_Item matches 1 run \
function $(namespace):asset/tools/$(Address)/used/_

# Using
$execute \
if score @s reizo_mcfunc_Engin.using_Item matches 1.. run \
function $(namespace):asset/tools/$(Address)/using/_

# アドレスを代入、実行。
$function $(namespace):asset/tools/$(Address)/tick/_