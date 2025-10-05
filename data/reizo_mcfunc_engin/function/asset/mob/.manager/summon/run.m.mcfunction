#> reizo_mcfunc_engin:asset/mob/.manager/summon/run.m
#
# 
# @MacroInput
#   namespace = データパックの名前空間、動的に名前空間を変えることによって違う名前空間でもこのデータパックのシステムを利用できる。
#   ID        = Mob,ObjectのID、動的にIDを使えることにより、Tagで管理するような長い記述を減らすことが出来ている。
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/_

# IDと名前空間から召喚処理を叩く
$function $(namespace):asset/mob/$(ID)/summon/_