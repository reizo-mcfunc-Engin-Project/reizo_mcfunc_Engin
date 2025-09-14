#> reizo_mcfunc_engin:asset/mob/.manager/tick/run.m
#
# namespaceとIDを取って、MobのTick処理を叩いてくれる。
#
# @MacroInput
#   namespace = データパックの名前空間、動的に名前空間を変えることによって違う名前空間でもこのデータパックのシステムを利用できる。
#   ID        = Mob,ObjectのID、動的にIDを使えることにより、Tagで管理するような長い記述を減らすことが出来ている。
# @within function
#   reizo_mcfunc_engin:asset/mob/.manager/tick/_
#   reizo_mcfunc_engin:asset/mob/.manager/data_adaptation/extends/foreach

$function $(namespace):asset/mob/$(ID)/tick/_