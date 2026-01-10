#> reizo_mcfunc_engin:asset/object/.manager/summon/run.m
#
# IDとnamespaceを設定してもらう。
#
# @MacroInput
#   namespace = データパックの名前空間、動的に名前空間を変えることによって違う名前空間でもこのデータパックのシステムを利用できる。
#   ID        = Mob,ObjectのID、動的にIDを使えることにより、Tagで管理するような長い記述を減らすことが出来ている。
# @public

$function $(namespace):asset/object/$(ID)/summon/_
$execute store success storage reizo_mcfunc_engin:object Implement byte 1 run schedule function $(namespace):asset/object/$(ID)/summon/_ 2147483647t
$schedule clear $(namespace):asset/object/$(ID)/summon/_