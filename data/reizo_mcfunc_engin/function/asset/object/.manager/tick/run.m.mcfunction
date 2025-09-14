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

# マクロに代入して実行
$function $(namespace):asset/object/$(ID)/tick/_