#> reizo_mcfunc_engin:asset/object/.manager/tick/run.m
#
# Objectのやつを実行してくれる、なんて優しい！
#
# @MacroInput
#   namespace = データパックの名前空間、動的に名前空間を変えることによって違う名前空間でもこのデータパックのシステムを利用できる。
#   ID        = Mob,ObjectのID、動的にIDを使えることにより、Tagで管理するような長い記述を減らすことが出来ている。
# @within function
#   reizo_mcfunc_engin:asset/object/.manager/tick/_
#   reizo_mcfunc_engin:asset/object/.manager/data_adaptation/extends/foreach

$function $(namespace):asset/object/$(ID)/tick/_
$execute store success storage reizo_mcfunc_engin:object Implement byte 1 run schedule function $(namespace):asset/object/$(ID)/tick/_ 2147483647t
$schedule clear asset:mob/alias/$(id)/tick