#> reizo_mcfunc_engin:asset/mob/.manager/register/run.m
#
# Mobの登録処理を呼び出す。
#
# @MacroInput
#   namespace = データパックの名前空間、動的に名前空間を変えることによって違う名前空間でもこのデータパックのシステムを利用できる。
#   ID        = Mob,ObjectのID、動的にIDを使えることにより、Tagで管理するような長い記述を減らすことが出来ている。
# @within function reizo_mcfunc_engin:asset/mob/.manager/summon/init

# Register呼び出し
$function $(namespace):asset/mob/$(ID)/register
data modify storage reizo:test _ set from storage reizo_mcfunc_engin:mob Register.Extends

# RegisterをContextへ
data modify storage reizo_mcfunc_engin:context Register set from storage reizo_mcfunc_engin:mob Register