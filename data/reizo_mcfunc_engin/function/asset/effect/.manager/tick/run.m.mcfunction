#> reizo_mcfunc_engin:asset/effect/.manager/tick/run.m
#
# 
#
# @MacroInput
#   namespace = データパックの名前空間、動的に名前空間を変えることによって違う名前空間でもこのデータパックのシステムを利用できる。
#   ID        = 動的にIDを代入しているため、フォルダ名に応じたクラスを呼び出せ、Tagで管理するような長い記述を減らすことが出来ている。
# @within function reizo_mcfunc_engin:asset/effect/.manager/tick/foreach

$function $(namespace):asset/effect/$(ID)/tick/_
$execute store success storage reizo_mcfunc_engin:effect Implement byte 1 run schedule function $(namespace):asset/effect/$(ID)/tick/_ 2147483647t
$schedule clear $(namespace):asset/effect/$(ID)/tick/_